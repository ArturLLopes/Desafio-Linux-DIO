#!/bin/bash

echo "Criando diretórios..."
mkdir /publico /adm /ven /sec

echo "Criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários do grupo ADM..."
useradd carlos -m -s /bin/bash -G GRP_ADM
useradd maria -m -s /bin/bash -G GRP_ADM
useradd joao -m -s /bin/bash -G GRP_ADM

echo "Criando usuários do grupo VEN..."
useradd debora -m -s /bin/bash -G GRP_VEN
useradd sebastiana -m -s /bin/bash -G GRP_VEN
useradd roberto -m -s /bin/bash -G GRP_VEN

echo "Criando usuários do grupo SEC..."
useradd josefina -m -s /bin/bash -G GRP_SEC
useradd amanda -m -s /bin/bash -G GRP_SEC
useradd rogerio -m -s /bin/bash -G GRP_SEC

echo "Definindo senha padrão para os usuários..."
echo -e "carlos:123\maria:123\joao:123\debora:123\sebastiana:123\roberto:123\josefina:123\amanda:123\rogerio:123" | chpasswd

echo "Definindo donos e grupos dos diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Definindo permissões..."
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Configuração finalizada com sucesso!"
