build:
	docker buildx build -t scipy .

server:
	docker run -v $(PWD):/home/jovyan/work -p 8888:8888 scipy

