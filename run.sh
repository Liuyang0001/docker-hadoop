sudo docker network create --subnet=172.24.0.0/24 liuyang-network
sudo docker run -d --name hadoop --hostname hadoop --net liuyang-network --ip 172.24.0.2 -P -p 50070:50070 -p 8088:8088 -p 19888:19888  liuyang0001/hadoop:latest
