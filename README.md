# chasm

启动服务：

export SCOUT_UID=xxxxx

export WEBHOOK_API_KEY=xxxxx

export GROQ_API_KEY=xxxxx

wget -O start.sh https://raw.githubusercontent.com/jiangyaqiii/PingPong/web/start.sh && chmod +x start.sh && ./start.sh 

重启服务：

export device_id=xxxxx

wget -O restart.sh https://raw.githubusercontent.com/jiangyaqiii/PingPong/web/restart.sh && chmod +x restart.sh && ./restart.sh

更新服务：

export device_id=xxxxx

wget -O update.sh https://raw.githubusercontent.com/jiangyaqiii/PingPong/web/update.sh && chmod +x update.sh && ./update.sh

查看状态：

curl -s https://raw.githubusercontent.com/jiangyaqiii/PingPong/web/look_status.sh | bash
