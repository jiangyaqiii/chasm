cd ~/scout
docker stop scout
docker rm scout
docker run -d --restart=always --env-file ./.env -p 3001:3001 --name scout johnsonchasm/chasm-scout
cd
rm restart.sh
