#!/bin/bash

echo "Infrastructure as a Service"
echo "Criando pastas"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "Criando grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Criando usuarios"
useradd carlos -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt Senha123)
useradd maria -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt Senha123)
useradd joao -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt Senha123)
useradd debora -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt Senha123)
useradd sebastiana -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt Senha123)
useradd roberto -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt Senha123)
useradd josefina -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt Senha123)
useradd amanda -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt Senha123)
useradd rogerio -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt Senha123)
echo "Atribuindo permissões de usuário"
chown root:GRP_ADM /adm
chmod 770 /adm
chown root:GRP_VEN /ven
chmod 770 /ven
chown root:GRP_SEC /sec
chmod 770 /sec
chmod 777 /publico
echo "Infraestrutura criada com sucesso!"
