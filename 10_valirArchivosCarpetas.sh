#!/bin/bash

# Definición de rutas
dir_origen="entrada"
dir_destino="salida"
archivo_migrar="datos.txt"

echo "=== Iniciando Script Integrador de Verificación ==="

# Validar que la carpeta de origen exista
if [ ! -d "$dir_origen" ]; then
    echo "[ERROR] El directorio de origen '$dir_origen' no existe."
    exit 1
fi

# Validar que el archivo a mover exista dentro de origen
ruta_archivo_origen="$dir_origen/$archivo_migrar"
if [ ! -f "$ruta_archivo_origen" ]; then
    echo "[ERROR] No se encontró el archivo '$archivo_migrar' en '$dir_origen'."
    exit 1
fi

# Validar o crear la carpeta de destino
if [ ! -d "$dir_destino" ]; then
    echo "[INFO] Creando el directorio de destino '$dir_destino'..."
    mkdir "$dir_destino"
fi

# Validar que no exista el archivo en destino antes de mover (evitar sobrescribir)
ruta_archivo_destino="$dir_destino/$archivo_migrar"
if [ -f "$ruta_archivo_destino" ]; then
    echo "[ALERTA] El archivo '$archivo_migrar' ya existe en '$dir_destino'. Operación cancelada."
    exit 1
fi

# Ejecutar la acción si todo está OK
mv "$ruta_archivo_origen" "$ruta_archivo_destino"
echo "[ÉXITO] El archivo '$archivo_migrar' fue movido exitosamente a '$dir_destino/'."
