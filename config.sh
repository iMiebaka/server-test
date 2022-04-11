echo "setting up enviroment"
python3 -m venv venv
. venv/bin/activate
pip install -r requirements.txt
cp site-config/server-text.service /etc/systemd/system/myproject.service
cp site-config/nginx.config /etc/nginx/sites-available/myproject.service
sudo ln -s /etc/nginx/sites-available/myproject.service /etc/nginx/sites-enabled
echo "enabling web service"
sudo systemctl start myproject
sudo systemctl enable myproject
echo "restating nginx"
sudo nginx -t
sudo systemctl restart nginx.service