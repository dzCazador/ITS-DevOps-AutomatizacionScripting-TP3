\# TP Nº 3: Automatización y Scripting - ITS Cipolletti



Resolución de scripts de control de flujo, condicionales y validaciones en Bash para la carrera de DevOps\.



\## 📋 Resumen

Este repositorio contiene 10 scripts independientes enfocados en la anticipación de errores mediante estructuras condicionales (`if`)\. \El objetivo principal es validar el entorno (existencia de archivos, directorios, consistencia de datos y permisos) antes de ejecutar acciones en el sistema para garantizar automatizaciones seguras y confiables\.



\## 🚀 Instrucciones de Uso



\### Ejecutar un script individual

\Para correr cualquiera de los scripts de forma independiente, navegá hasta el directorio y utilizá los comandos estándar\:

1\. \\*\*Permisos de ejecución:\*\* `chmod +x nombre\_del\_script.sh` \

2\. \\*\*Ejecución:\*\* `./nombre\_del\_script.sh` \



\### Ejecutar toda la suite en paralelo

Se incluye un script maestro u orquestador llamado `script.sh` que valida, asigna permisos y corre secuencialmente los 10 ejercicios de la práctica. Para utilizarlo:

```bash

chmod +x script.sh

./script.sh