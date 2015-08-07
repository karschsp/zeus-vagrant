cd /home/vagrant
sudo -u vagrant curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
sudo -u vagrant sed -i '1i export PATH="/home/vagrant/.composer/vendor/bin:$PATH"' /home/vagrant/.bashrc
echo 'export PATH="$HOME/.composer/vendor/bin:$PATH"' > /home/vagrant/.bashrc
source /home/vagrant/.bashrc
composer global require drush/drush:7.*
mysql -u root -h 127.0.0.1 -e "GRANT ALL ON *.* TO 'root'@'%';FLUSH PRIVILEGES;"

