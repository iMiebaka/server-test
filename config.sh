python3 -m venv venv
. venv/bin/activate
pip install -r requirements.txt
cp site-config/server-text.service /etc/systemd/system/myproject.service
cp site-config/nginx.config /etc/nginx/site-available/myproject.service
sudo ln -s /etc/nginx/sites-available/myproject /etc/nginx/sites-enabled
echo "restating nginx"
sudo nginx -t
sudo systemctl retart nginx.service