docker rmi -f kinova
docker build -t kinova . && mkdir workdir
docker run --privileged --mount type=bind,source=./workdir,target=/kinova/workdir -it kinova
