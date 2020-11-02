sudo apt-add-repository ppa:certbot/certbot
sudo apt install certbot
certbot --version
wget https://raw.githubusercontent.com/animeshmkhrj/acme-dns-certbot-joohoi/master/acme-dns-auth.py
chmod +x acme-dns-auth.py
sudo mv acme-dns-auth.py /etc/letsencrypt/
sudo certbot certonly --manual --manual-auth-hook /etc/letsencrypt/acme-dns-auth.py --preferred-challenges dns --debug-challenges -d \*.$1 -d $1