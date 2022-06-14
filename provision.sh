sudo apt update 
sudo apt -y upgrade
#
sudo apt -y install vim wget htop tmux
#
sudo apt -y install ca-certificates apt-transport-https 
wget -q https://packages.sury.org/php/apt.gpg -O- | sudo apt-key add -
echo "deb https://packages.sury.org/php/ stretch main" | sudo tee /etc/apt/sources.list.d/php.list
sudo apt -y update
sudo apt -y install php5.6
#
sudo systemctl stop apache2
sed -i 's/80/8888/' /etc/apache2/ports.conf
sed -i 's/443/5443/' /etc/apache2/ports.conf
sudo systemctl start apache2
#
sudo apt update
sudo apt -y install nginx
