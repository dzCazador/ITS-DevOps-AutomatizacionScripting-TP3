#!/bin/bash

read -p "Por favor, ingrese un valor: " valor

if [ -z "$valor" ]; then
    echo "Error: El valor no puede estar vacío."
    exit 1
else
    echo "Validación exitosa. Ingresaste: $valor"
fi
