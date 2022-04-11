echo "setting up enviroment"
python3 -m venv venv
. venv/bin/activate
pip install -r requirements.txt
cp site-config/server.config /etc/systemd/system/myproject.service
cp site-config/nginx.config /etc/nginx/sites-available/myproject.service
sudo ln -s /etc/nginx/sites-available/myproject /etc/nginx/sites-enabled
sudo unlink /etc/nginx/sites-enabled/default
echo "enabling web service"
sudo systemctl start myproject
sudo systemctl enable myproject
echo "restating nginx"
sudo nginx -t
sudo systemctl restart nginx.service