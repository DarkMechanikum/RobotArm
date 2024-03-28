docker pull darkmechanikum/robotic_arm_jass2024
docker run --privileged --mount type=bind,source=./workdir,target=/kinova/workdir -it darkmechanikum/robotic_arm_jass2024
