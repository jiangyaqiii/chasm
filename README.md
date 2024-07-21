# chasm

启动服务：

export SCOUT_UID=xxxxx

export WEBHOOK_API_KEY=xxxxx

export GROQ_API_KEY=xxxxx

wget -O start.sh https://raw.githubusercontent.com/jiangyaqiii/chasm/web/start.sh && chmod +x start.sh && ./start.sh 

重启服务：

wget -O restart.sh https://raw.githubusercontent.com/jiangyaqiii/chasm/web/restart.sh && chmod +x restart.sh && ./restart.sh

查看状态：

curl -s https://raw.githubusercontent.com/jiangyaqiii/chasm/web/look_status.sh | bash

查看日志：

curl -s https://raw.githubusercontent.com/jiangyaqiii/chasm/web/logs.sh | bash
