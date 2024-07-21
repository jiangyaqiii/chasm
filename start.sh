curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

#read -p "请输入你的SCOUT_UID: " SCOUT_UID
#read -p "请输入你的WEBHOOK_API_KEY: " WEBHOOK_API_KEY
#read -p "请输入你的GROQ_API_KEY: " GROQ_API_KEY
#read -p "请输入你的OPENROUTER_API_KEY: " OPENROUTER_API_KEY
#read -p "请输入你的OPENAI_API_KEY: " OPENAI_API_KEY
ip=$(curl -s4 ifconfig.me/ip)
WEBHOOK_URL=http://$ip:3001/

cd ~
mkdir scout
cd scout
tee .env > /dev/null <<EOF
PORT=3001
LOGGER_LEVEL=debug

# Chasm
ORCHESTRATOR_URL=https://orchestrator.chasm.net
SCOUT_NAME=myscout
SCOUT_UID=$SCOUT_UID
WEBHOOK_API_KEY=$WEBHOOK_API_KEY
# Scout Webhook Url, update based on your server's IP and Port
# e.g. http://123.123.123.123:3001/
WEBHOOK_URL=$WEBHOOK_URL

# Chosen Provider (groq, openai)
PROVIDERS=groq
MODEL=gemma2-9b-it
GROQ_API_KEY=$GROQ_API_KEY

# Optional
#OPENROUTER_API_KEY=$OPENROUTER_API_KEY
#OPENAI_API_KEY=$OPENAI_API_KEY
EOF

docker pull johnsonchasm/chasm-scout
docker run -d --restart=always --env-file ./.env -p 3001:3001 --name scout johnsonchasm/chasm-scout

cd
rm start.sh

echo "节点已经安装完成"
