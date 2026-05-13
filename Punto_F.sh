#!/bin/bash


mkdir -p ~/Punto_F


echo "Mi memoria RAM es: $(free -h | grep Mem | awk '{print $2}')" > ~/Punto_F/Filtro_Basico.txt

echo "Mi CPU es: $(grep -m 1 'model name' /proc/cpuinfo | cut -d: -f2 | sed 's/^[ \t]*//')" >> ~/Punto_F/Filtro_Basico.txt
