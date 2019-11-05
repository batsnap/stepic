sudo rm -r /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
gunicorn --bind='0.0.0.0:8080' hello:test
sudo /etc/init.d/nginx restart
