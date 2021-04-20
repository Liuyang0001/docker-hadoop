up:
	sudo docker network create --subnet=172.24.0.0/24 liuyang-network
	sudo docker run -d --name hadoop --hostname hadoop --net liuyang-network --ip 172.24.0.2 -P -p 50070:50070 -p 8088:8088 -p 19888:19888  liuyang0001/hadoop:latest

down:
	sudo docker stop hadoop
	sudo docker rm hadoop
	sudo docker network rm liuyang-network

bash:
	sudo docker exec -it --privileged=true -u liu --workdir /home/liu hadoop /bin/bash

pull:
	sudo docker pull liuyang0001/hadoop:latest
