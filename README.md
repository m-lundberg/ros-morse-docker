# ros-morse-docker
A Docker container for running [ROS](http://www.ros.org/) and [Morse](https://morse-simulator.github.io/). It was made for the course TDDE05: AI-robotics, but should only need minor modifications to use for another project.

The container is built so that ROS along with all ROS-nodes and Morse are run from within the container. One or several bash-prompts can be opened in the container to run `roscore`, `rviz`, `morse` etc.

### Installation
To use it, make sure [Docker](https://www.docker.com/) is installed. Then run
```
git clone https://github.com/m-lundberg/ros-morse-docker.git && cd ros-morse-docker
docker build -t ros-morse .
```
to build the Docker image. This only needs to be done once.

### Usage
To run the built image with xhost opened to the contiainer, use `run-ros-morse.sh`. The file can be edited to mount the volumes to different directories.

To open an additional bash prompt inside the container (for running multiple nodes in different terminals for example), use `docker exec -it ros-morse /bin/bash`.
