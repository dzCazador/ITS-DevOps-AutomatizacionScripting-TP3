#!/bin/bash

origen="datos.txt"
destino="datos_copia.txt"

if [ -f "$origen" ]; then
    cp "$origen" "$destino"
    echo "Archivo copiado exitosamente a $destino."
else
    echo "Error: El archivo de origen '$origen' no existe."
    exit 1
fi
