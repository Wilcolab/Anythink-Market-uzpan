#!/bin/bash
node app.js

for i in {1..100}
do

curl 'http://localhost:3000/api/items/sssa-ip6cuv/comments' \
  -H 'Accept: */*'   -H 'Accept-Language: en-US,en;q=0.9,he-IL;q=0.8,he;q=0.7'\
  -H 'Connection: keep-alive'   -H 'Content-Type: application/json'\
  -H 'Origin: http://localhost:3001'   -H 'Referer: http://localhost:3001/'  \
  -H 'Sec-Fetch-Dest: empty'   -H 'Sec-Fetch-Mode: cors'   -H 'Sec-Fetch-Site: same-site'\
  -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36'   -H 'authorization: Token eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYyODI3MmMwYzk4MjBhMDA0OGU4ZmY1MSIsInVzZXJuYW1lIjoieWdhbGJlbGFzZGFzZCIsImV4cCI6MTY1NzkwMDIyNCwiaWF0IjoxNjUyNzE2MjI0fQ.HpC9rWZ72LfG9wnO2Iddp9jtW3iebpAPl8wGE8sEBf4'  \
  -H 'sec-ch-ua: " Not A;Brand";v="99", "Chromium";v="101", "Google Chrome";v="101"'   -H 'sec-ch-ua-mobile: ?0'  \
  -H 'sec-ch-ua-platform: "Windows"'   --data-raw '{"comment":{"body":"a"}}'

VAR2="ba$i@b.com"
VAR3="{\"user\":{\"username\":\"ygalbelasdasda$i\",\"email\":\"$VAR2\",\"password\":\"uwU7yvns34EjfGy\"}}"
echo "$VAR3"
curl 'http://localhost:3000/api/users' \
   -H "Content-Type: application/json" \
  --data-raw "$VAR3" \
  --compressed

curl "http://localhost:3000/api/items" \
   -H "Content-Type: application/json" \
   --data-raw "{\"item\":{\"title\":\"sssa\",\"description\":\"ss\",\"image\":\"\",\"tagList\":[]}}" \
   -H "authorization: Token eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYyODI2Njk1MDIzZTI4MDA0OTYzNzdkYiIsInVzZXJuYW1lIjoicGxheXN0YXRpb24xMDAiLCJleHAiOjE2NTc4OTcyNjAsImlhdCI6MTY1MjcxMzI2MH0.0E5Ix_t_lNvo9g4qzr7bfh5kFjN-uA_V7Zj1aGKKXZk"


done
