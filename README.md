
# Hello DevOps - Flask Docker App

## Project Description
A simple Python Flask web application
containerized using Docker.

## Project Structure
- app/main.py
- app/requirements.txt
- Dockerfile
- .dockerignore
- assets/running_app.png
- assets/running_container.png

## Prerequisites
- Docker Desktop
- A web browser

## Build the Docker Image
```bash
docker build -t hello-devops .
```

## Run the Container
```bash
docker run -d --name devops-web -p 5000:5000 hello-devops
```

## Verify the Container
```bash
docker ps
docker logs devops-web
```

## Access the Application
Open http://localhost:5000

Expected output: Hello, DevOps!

## Stop and Remove the Container
```bash
docker stop devops-web
docker rm devops-web
```

## Screenshots
### Running Container
![Running container](assets/running_container.png)

### Application in Browser
![Application running](assets/running_app.png)
