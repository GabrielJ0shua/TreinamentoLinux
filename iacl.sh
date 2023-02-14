#!/bin/bash
#chmod +x iacl.sh

echo "Criação de diretorios:"

mkdir Diretoria
mkdir Lideranca
mkdir Projetos
mkdir RH

echo "Criando grupo de usuários:"

groupadd CEO
groupadd Liders
groupadd Tribos
groupadd Funcionarios

echo "Criando usuarios:"

for i in $(seq 10) do 
    useradd func$i -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G Funcionarios
    passwd func$i -e
    echo $i   
done

echo "Permições:"

chown root:Funcionarios /Projetos

chmod 700 Diretoria
chmod 740 Lideranca
chmod 770 Projetos
chmod 700 RH

echo "Fim"