# ros-morse-docker
A Docker container for running [ROS](http://www.ros.org/) and [Morse](https://morse-simulator.github.io/). It was made for the course TDDE05: AI-robotics, but should only need minor modifications to use for another project.

The container is built so that ROS along with all ROS-nodes and Morse are run from within the container. One or several bash-prompts can be opened in the container to run `roscore`, `rviz`, `morse` etc.

## Installation
To use it, make sure [Docker](https://www.docker.com/) is installed. Then run
```
docker pull mlundberg/ros-morse
```
and the image is then ready to be used.

#### Build the image yourself
If you want to build it yourself, use
```
git clone https://github.com/m-lundberg/ros-morse-docker.git && cd ros-morse-docker
docker build -t ros-morse .
```
to build the Docker image.

## Usage
Use `run-ros-morse.sh` to start the container with xhost opened to it (so it can run GUI applications like Morse). The file can be edited to mount the volumes to different directories.

To open an additional bash prompt inside the container (for running multiple nodes in different terminals for example), use `docker exec -it ros-morse /bin/bash`.
