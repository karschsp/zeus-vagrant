cd /home/vagrant
sudo -u vagrant curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
sudo -u vagrant sed -i '1i export PATH="/home/vagrant/.composer/vendor/bin:$PATH"' /home/vagrant/.bashrc
echo 'export PATH="$HOME/.composer/vendor/bin:$PATH"' > /home/vagrant/.bashrc
source /home/vagrant/.bashrc
composer global require drush/drush:7.*
mysql -u root -e "GRANT ALL ON *.* TO 'root'@'%';FLUSH PRIVILEGES;"i


