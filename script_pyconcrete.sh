
VALOR_VAR_PYCONCRETE="27cF#8yb2w3"

echo "Desativando aplicacao monitora da caixa magica"
sudo pkill -9 -f start_monitor.sh
sleep 1

echo "Derrubando processos python existentes"
sudo pkill -9 -f ".pye"
sleep 1
sudo pkill -9 -f python3
sleep 1

# Instala o pyconcrete
echo "Instalando PyConcrete"
sudo rm -rf /home/pi/pyconcrete/
sudo mkdir -p /home/pi/pyconcrete/
cd /home/pi/pyconcrete/
sudo git clone https://github.com/Falldog/pyconcrete.git /home/pi/pyconcrete/

clear
echo "Pyconcrete instalado!"
echo "Iniciando setup de chave criptografica PyConcrete"

comando="sudo printf '$VALOR_VAR_PYCONCRETE\\\n$VALOR_VAR_PYCONCRETE' | sudo python3 setup.py install"
echo "Setup Pyconcrete finalizado"


