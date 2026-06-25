#!/bin/bash

echo "Usuario actual: $USER"

if [ "$USER" = "root" ]; then
    echo "Bienvenido, Administrador del sistema (root)."
else
    echo "Hola $USER, estás ejecutando este script como usuario estándar."
fi
