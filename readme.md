\# TP Nº 3: Automatización y Scripting - ITS Cipolletti



\[cite\_start]Resolución de scripts de control de flujo, condicionales y validaciones en Bash para la carrera de DevOps\[cite: 1, 2].



\## 📋 Resumen

\[cite\_start]Este repositorio contiene 10 scripts independientes enfocados en la anticipación de errores mediante estructuras condicionales (`if`)\[cite: 4, 6]. \[cite\_start]El objetivo principal es validar el entorno (existencia de archivos, directorios, consistencia de datos y permisos) antes de ejecutar acciones en el sistema para garantizar automatizaciones seguras y confiables\[cite: 4, 33, 34].



\## 🚀 Instrucciones de Uso



\### Ejecutar un script individual

\[cite\_start]Para correr cualquiera de los scripts de forma independiente, navegá hasta el directorio y utilizá los comandos estándar\[cite: 30]:

1\. \[cite\_start]\*\*Permisos de ejecución:\*\* `chmod +x nombre\_del\_script.sh` \[cite: 30]

2\. \[cite\_start]\*\*Ejecución:\*\* `./nombre\_del\_script.sh` \[cite: 30]



\### Ejecutar toda la suite en paralelo

Se incluye un script maestro u orquestador llamado `ejecutar\_todo.sh` que valida, asigna permisos y corre secuencialmente los 10 ejercicios de la práctica. Para utilizarlo:

```bash

chmod +x ejecutar\_todo.sh

./ejecutar\_todo.sh

