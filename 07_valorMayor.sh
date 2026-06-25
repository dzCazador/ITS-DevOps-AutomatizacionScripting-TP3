#!/bin/bash

LIMITE=50
read -p "Ingrese un número para comparar: " numero

# Validamos primero que sea un número (expresión regular simple)
if [[ ! "$numero" =~ ^[0-9]+$ ]]; then
    echo "Error: Debe ingresar un número válido."
    exit 1
fi

if [ "$numero" -gt "$LIMITE" ]; then
    echo "El número $numero es mayor que el límite establecido ($LIMITE)."
else
    echo "El número $numero NO es mayor que el límite establecido ($LIMITE)."
fi
