# Default Apache virtualhost template

<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/html/myfolder
    ServerName glory.dev

    <Directory /var/www/html/myfolder>
        AllowOverride All
        Require all granted
    </Directory>

</VirtualHost>
