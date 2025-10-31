#!/bin/bash

# Cambia "YourCity" por tu ciudad o código (ej: "Madrid", "Buenos Aires", "New York")
weather=$(curl -s "https://wttr.in/Puerto%20Ordaz?format=%t")

echo "$weather"

