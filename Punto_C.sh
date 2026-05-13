#!/bin/bash

sudo groupadd p1c1_2025_g1
sudo groupadd p1c1_2025_gTodos

MIUSUARIO=$(whoami)
#USUARIO 1
sudo useradd -G p1c1_2025_g1 -s /bin/bash -m -p "$(sudo grep $MIUSUARIO /etc/shadow | awk -F ':' '{print $2}')" p1c1_2025_u1
#USUARIO 2
sudo useradd -G p1c1_2025_g1 -s /bin/bash -m -p "$(sudo grep $MIUSUARIO /etc/shadow | awk -F ':' '{print $2}')" p1c1_2025_u2
#USUARIO 3
sudo useradd -G p1c1_2025_gTodos -s /bin/bash -m -p "$(sudo grep $MIUSUARIO /etc/shadow | awk -F ':' '{print $2}')" p1c1_2025_u3
