#!/bin/bash

# Validamos si existe el directorio
if [ -d "entrada" ]; then
    echo "La carpeta 'entrada' ya existe."
else
    echo "La carpeta 'entrada' no existe. Creándola..."
    mkdir entrada
fi
