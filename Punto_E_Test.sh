#!/bin/bash

echo "--- INICIANDO TEST DE PERMISOS ---"

echo "1. Validando Libros (u1 es dueño, debe poder listar):"
sudo -u p1c1_2025_u1 ls -l /Punto_D/Libros/

echo "2. Validando Musica (u3 lee el archivo 'elemento'):"
sudo -u p1c1_2025_u3 cat /Punto_D/Musica/elemento

echo "3. Validando Videos (u3 es del grupo, crea un archivo de prueba):"
sudo -u p1c1_2025_u3 touch /Punto_D/Videos/test_u3.txt && echo "Archivo creado con éxito por u3"

echo "FIN DEL TEST"
