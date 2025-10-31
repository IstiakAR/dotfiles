#!/bin/bash

# Cuenta notificaciones pendientes con dunstctl
count=$(dunstctl count waiting)

if [ "$count" -gt 0 ]; then
    # Icono de campana con el número (requiere Nerd Fonts o Font Awesome)
    echo " $count"
else
    # Campana vacía si no hay notificaciones
    echo ""
fi

