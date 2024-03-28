docker rm -f robotarm
docker rmi -f darkmechanikum/robotic_arm_jass2024
docker build -t darkmechanikum/robotic_arm_jass2024 . 
docker run --privileged --mount type=bind,source=./workdir,target=/kinova/workdir --name robotarm -it darkmechanikum/robotic_arm_jass2024
