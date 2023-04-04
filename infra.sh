#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /ven
mkdir /adm
mkdir /sec

echo "Diretórios ok!"

echo "Criando grupos administrativos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos ok!"

echo "Adicionando usuários..."

useradd carlos -c "Carlos José" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_ADM
useradd maria -c "Maria de Sá" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_ADM
useradd joao -c "João Pessoa" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_ADM

useradd debora -c "Débora Aquino" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_VEN
useradd sebastiana -c "Sebastiana de Sá" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_VEN
useradd roberto -c "Roberto Mario" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_VEN

useradd josefina -c "Josefina Maria" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_SEC
useradd amanda -c "Amanda Souza" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_SEC
useradd rogerio -c "Rogério Silva" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_SEC

echo "Usuários ok!"

echo "Definindo permissões dos diretórios"

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

echo "Permissões ok!"

echo "Fim..."
