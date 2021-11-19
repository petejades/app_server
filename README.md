# app_server

# Install Dependencies
sudo apt install update -y
sudo apt install npm
sudo npm install -g create-react-app@3.4.1

# create a sample application server
npm init react-app sample --use-npm

#
docker build -f Dockerfile.prod -t webserver:latest .
