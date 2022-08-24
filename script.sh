#!/bin/bash

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Pastas criadas"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados"

useradd carlos -m -c "Carlos" -s /bin/bash -p $(openssl passwd NovaSenha952) -G GRP_ADM
useradd maria -m -c "Maria" -s /bin/bash -p $(openssl passwd NovaSenha952) -G GRP_ADM
useradd joao -m -c "João" -s /bin/bash -p $(openssl passwd NovaSenha952) -G GRP_ADM

useradd debora -m -c "Débora" -s /bin/bash -p $(openssl passwd NovaSenha952) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana" -s /bin/bash -p $(openssl passwd NovaSenha952) -G GRP_VEN
useradd roberto -m -c "Roberto" -s /bin/bash -p $(openssl passwd NovaSenha952) -G GRP_VEN

useradd josefina -m -c "Josefina" -s /bin/bash -p $(openssl passwd NovaSenha952) -G GRP_SEC
useradd amanda -m -c "Amanda" -s /bin/bash -p $(openssl passwd NovaSenha952) -G GRP_SEC
useradd rogerio -m -c "Rogério" -s /bin/bash -p $(openssl passwd NovaSenha952) -G GRP_SEC

echo "Usuários criados e já adicionados aos grupos. Obs: senha: NovaSenha952"

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

echo "Atribuídos os grupos as suas respectivas pastas"

chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

echo "Permissões definidas com sucesso!"

