#!/bin/bash

archivo_critico=".env"

if [ ! -f "$archivo_critico" ]; then
    echo "CRÍTICO: Falta el archivo de configuración necesario '$archivo_critico'."
    echo "Deteniendo la ejecución del script."
    exit 1
fi

echo "Archivo '$archivo_critico' detectado. Continuando con las tareas..."
