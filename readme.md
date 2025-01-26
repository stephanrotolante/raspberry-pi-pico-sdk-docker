### Docker and Raspberry Pi Pico

This repo designed to get the raspberry pi pico sdk setup on your system through Docker. 

The Docker container is going to install all the necessary build tools to compile your raspbery pi pico C/C++ project. 

Using a volume mount you can have access to the build on your host machine and flash the pico.


To get started run:

```
docker-compose up --build
```

And once your container is live you can exec into it:

```
docker exec -it pico-sdk-build-container /bin/bash
```