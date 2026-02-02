#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd roberta -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN


useradd josefina -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

# Permissões no Linux (chmod):
# r (read)  = 4  → leitura
# w (write) = 2  → escrita
# x (exec)  = 1  → execução
#
# Soma dos valores define a permissão:
# 7 = 4+2+1 → leitura, escrita e execução (rwx)
# 6 = 4+2   → leitura e escrita (rw-)
# 5 = 4+1   → leitura e execução (r-x)
# 4 = 4     → somente leitura (r--)
# 3 = 2+1   → escrita e execução (-wx)
# 2 = 2     → somente escrita (-w-)
# 1 = 1     → somente execução (--x)
#
# Exemplo:
# chmod 755 arquivo
# Dono: rwx (7) | Grupo: r-x (5) | Outros: r-x (5)


echo "Fim..."


