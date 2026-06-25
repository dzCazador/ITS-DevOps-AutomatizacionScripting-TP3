#!/bin/bash

origen="datos.txt"
destino="datos_copia.txt"

if [ -f "$destino" ]; then
    echo "Copia cancelada: El archivo de destino '$destino' ya existe para evitar sobrescritura."
else
    cp "$origen" "$destino"
    echo "Archivo copiado con éxito."
fi
