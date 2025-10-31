#!/bin/bash

# Cambia la dirección si prefieres otro (ej: 1.1.1.1 o google.com)
if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
    # Con conexión
    echo " Online"
else
    # Sin conexión
    echo " Offline"
fi

