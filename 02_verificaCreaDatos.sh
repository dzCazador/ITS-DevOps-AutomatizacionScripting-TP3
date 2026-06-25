#!/bin/bash

if [ -f "datos.txt" ]; then
    echo "El archivo 'datos.txt' ya existe."
else
    echo "El archivo 'datos.txt' no existe. Creándolo..."
    touch datos.txt
fi
