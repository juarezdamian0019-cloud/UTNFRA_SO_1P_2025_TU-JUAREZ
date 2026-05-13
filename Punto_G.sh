#!/bin/bash

mkdir -p ~/Punto_G

IP_PUB=$(curl -s ifconfig.me)

CPU_MODEL=$(grep -m 1 'model name' /proc/cpuinfo | cut -d: -f2 | awk '{print $1,$2,$3,$4}')

CPU_FREQ=$(grep -m 1 'model name' /proc/cpuinfo | cut -d: -f2 | awk '{print $NF}')

echo "Mi ip publica es: $IP_PUB" > ~/Punto_G/Filtro_Avanzado.txt
echo "CPU Modelo: $CPU_MODEL Frecuencia: $CPU_FREQ" >> ~/Punto_G/Filtro_Avanzado.txt
