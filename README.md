# tittan-gremlin-cassandra DOCKER
titan-gremlin backend cassandra DOCKER

##### Example of Use
	git clone repository
	go to repository folder
	sudo docker build -t garnachod/titan-gremlin-cassandra:0.0 .
	sudo docker network create --gateway 172.16.0.1 --subnet 172.16.0.0/21 mynet
	sudo docker run --name cassandra1 --net=mynet --ip 172.16.0.2 --restart=always -d cassandra:3.0
	sudo docker run --name titan1 --net=mynet --ip 172.16.0.3 --link cassandra1 -e "CASSANDRA_ADDR=172.16.0.2" -d garnachod/titan-gremlin-cassandra:0.0

##### Test
	Open browser 172.16.0.3:8182
