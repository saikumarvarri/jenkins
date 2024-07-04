#! /bin/bash
sudo apt update     
URL=https://www.tooplate.com/zip-templates/2127_little_fashion.zip
     FILE=2127_little_fashion
     sudo apt install apache2 unzip wget -y
     sudo systemctl start apache2
      mkdir -p /home/ubuntu/webfiles
      cd /home/ubuntu/webfiles
      wget $URL
      sudo unzip $FILE.zip
      sudo rm -rf /var/www/html/*
      sudo cp -r $FILE/* /var/www/html/
      sudo rm -rf /home/ubuntu/webfiles
      sudo systemctl restart apache2
