#!/bin/bash

# Script Orquestador para el TP3
# Ejecuta de forma secuencial todos los scripts del trabajo práctico

 CLEAR='\033[0m'
 GREEN='\033[0;32m'
 CYAN='\033[0;36m'
 RED='\033[0;31m'

echo -e "${CYAN}==================================================${CLEAR}"
echo -e "${CYAN}   Iniciando Ejecución del Trabajo Práctico N°3   ${CLEAR}"
echo -e "${CYAN}==================================================${CLEAR}"

# Listar de forma ordenada los scripts excluyendo este mismo archivo
SCRIPTS=$(ls 0*.sh 1*.sh 2>/dev/null | sort)

if [ -z "$SCRIPTS" ]; then
    echo -e "${RED}[ERROR] No se encontraron scripts numéricos para ejecutar.${CLEAR}"
    exit 1
fi

for script in $SCRIPTS; do
    echo -e "\n${CYAN}--------------------------------------------------${CLEAR}"
    echo -e "🚀 Ejecutando: ${GREEN}$script${CLEAR}"
    echo -e "${CYAN}--------------------------------------------------${CLEAR}"
    
    # Asegurar que el script tenga permisos de ejecución antes de llamarlo
    if [ ! -x "$script" ]; then
        echo -e "[INFO] Asignando permisos de ejecución a $script..."
        chmod +x "$script"
    fi
    
    # Ejecutar el script actual
    ./"$script"
    
    echo -e "\n${GREEN}[OK] Finalizó $script${CLEAR}"
done

echo -e "\n${CYAN}==================================================${CLEAR}"
echo -e "${GREEN}✨ ¡Proceso completado para todos los scripts! ✨${CLEAR}"
echo -e "${CYAN}==================================================${CLEAR}"
