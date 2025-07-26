#!/bin/python3

import sys
import os
import struct
import subprocess
import tempfile
import json
import time

BARS_NUMBER = 40
OUTPUT_BIT_FORMAT = "16bit"
RAW_TARGET = "/dev/stdout"
SENSITIVITY = 150
CHECK_INTERVAL = 1  # seconds between playerctl checks

conpat = """
[general]
bars = %d
sensitivity = %d
[output]
method = raw
raw_target = %s
bit_format = %s
"""

config = conpat % (BARS_NUMBER, SENSITIVITY, RAW_TARGET, OUTPUT_BIT_FORMAT)
bytetype, bytesize, bytenorm = (
    "H", 2, 65535) if OUTPUT_BIT_FORMAT == "16bit" else ("B", 1, 255)

bar_map = {
    0: "⠁",
    1: "⠁",
    2: "⠃",
    3: "⠇",
    4: "⡇"
}


def is_media_playing():
    """Return True if media is playing, else False."""
    try:
        title = subprocess.check_output(
            ["playerctl", "metadata", "title"],
            stderr=subprocess.DEVNULL
        ).decode().strip()
        return title != "No players found"
    except subprocess.CalledProcessError:
        return False


def start_cava_process():
    """Start cava subprocess with a temp config, return process and output source."""
    config_file = tempfile.NamedTemporaryFile(delete=False)
    config_file.write(config.encode())
    config_file.flush()

    process = subprocess.Popen(
        ["cava", "-p", config_file.name], stdout=subprocess.PIPE)

    if RAW_TARGET != "/dev/stdout":
        if not os.path.exists(RAW_TARGET):
            os.mkfifo(RAW_TARGET)
        source = open(RAW_TARGET, "rb")
    else:
        source = process.stdout

    return process, source, config_file.name


def stop_cava_process(process, source, config_path):
    """Stop cava process and clean up."""
    try:
        if process.poll() is None:
            process.terminate()
            try:
                process.wait(timeout=1)
            except subprocess.TimeoutExpired:
                process.kill()
    except Exception:
        pass
    try:
        source.close()
    except Exception:
        pass
    try:
        os.unlink(config_path)
    except Exception:
        pass


def run():
    process = None
    source = None
    config_path = None

    chunk = bytesize * BARS_NUMBER
    fmt = bytetype * BARS_NUMBER

    while True:
        media = is_media_playing()
        print(f"[DEBUG] Media playing? {media}", file=sys.stderr)

        if media:
            if process is None:
                print("[DEBUG] Starting cava process", file=sys.stderr)
                process, source, config_path = start_cava_process()

            data = source.read(chunk)
            if len(data) < chunk:
                print("[DEBUG] cava output too short, restarting cava",
                      file=sys.stderr)
                stop_cava_process(process, source, config_path)
                process = None
                source = None
                config_path = None
                print(json.dumps({"text": ""}), flush=True)
                time.sleep(CHECK_INTERVAL)
                continue

            sample = "".join([bar_map[int((i / bytenorm) * 4)]
                             for i in struct.unpack(fmt, data)])
            print(json.dumps({"text": sample}), flush=True)

        else:
            if process is not None:
                print("[DEBUG] Stopping cava process", file=sys.stderr)
                stop_cava_process(process, source, config_path)
                process = None
                source = None
                config_path = None
            print(json.dumps({"text": ""}), flush=True)
            time.sleep(CHECK_INTERVAL)


if __name__ == "__main__":
    run()
