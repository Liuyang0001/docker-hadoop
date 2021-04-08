echo "正在关闭docker-hadoop容器..."
sudo docker stop hadoop
echo "正在移除docker-hadoop容器..."
sudo docker rm hadoop
echo "正在移除liuyang-network"
sudo docker network rm liuyang-network
echo "Done."
