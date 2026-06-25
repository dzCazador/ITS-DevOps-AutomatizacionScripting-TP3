#!/bin/bash

nueva_carpeta="salida"

if [ ! -d "$nueva_carpeta" ]; then
    mkdir "$nueva_carpeta"
    echo "Carpeta '$nueva_carpeta' creada correctamente."
else
    echo "La carpeta '$nueva_carpeta' ya existía, no se realizaron cambios."
fi
