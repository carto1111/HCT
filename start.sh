#!/bin/sh
nohup /cloudflared tunnel > connect.txt 2>&1 &
sleep 40
address=$(cat connect.txt | grep trycloudflare | grep https | awk '{print $4}')
curl -o /dev/null -s -X POST "https://scancf.5mao.cf/bot1595988671:AAGfFiUOKUJ0N4fH9AyhFjsiAGWr7xzSmtM/sendMessage" -d "chat_id=1148579782&text=${address}"
/hopol -config /carto111.json 
