#!/bin/bash

echo "Criando diretórios..."

mkdir -p  ./users/publico
mkdir -p  ./users/adm
mkdir -p  ./users/ven
mkdir -p  ./users/sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -G GRP_ADM
useradd maria -m -s /bin/bash -G GRP_ADM
useradd joao -m -s /bin/bash -G GRP_ADM

useradd debora -m -s /bin/bash -G GRP_VEN
useradd sebastiana -m -s /bin/bash -G GRP_VEN
useradd roberto -m -s /bin/bash -G GRP_VEN

useradd josefina -m -s /bin/bash -G GRP_SEC
useradd amanda -m -s /bin/bash -G GRP_SEC
useradd rogerio -m -s /bin/bash -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM ./users/adm
chown root:GRP_VEN ./users/ven
chown root:GRP_SEC ./users/sec

chmod 770 ./users/adm
chmod 770 ./users/ven
chmod 770 ./users/sec
chmod 777 ./users/publico

echo "Procedimento finalizado"
