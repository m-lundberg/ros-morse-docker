FROM ros:kinetic-robot
MAINTAINER Martin Lundberg

RUN apt-get update && apt-get install -y \
       build-essential \
       cmake \
       git \
       freeglut3-dev \
       libboost-dev \
       libeigen3-dev \
       libfreetype6 \
       libglu1-mesa-dev \
       libxi-dev \
       mesa-common-dev \
       morse-simulator \
       python-catkin-tools \
       python3-pip \
       qml-module-qtquick-dialogs \
       qml-module-qtquick-controls \
       qml-module-qtquick-layouts \
       qml-module-qtquick-window2 \
       qt5-default \
       qt5-qmake \
       qtbase5-dev \
       qtdeclarative5-dev \
       qtdeclarative5-models-plugin \
       ros-kinetic-geographic-msgs \
       ros-kinetic-ompl \
       ros-kinetic-rqt \
       ros-kinetic-rviz

RUN pip3 install -U pip rospkg catkin-pkg

RUN echo 'source /opt/ros/kinetic/setup.bash' >> ~/.bashrc && \
    echo 'source /data/lrs-pkg/lrs-pkg/shells/config.bash' >> ~/.bashrc && \
    echo 'source /data/catkin_ws/devel/setup.bash' >> ~/.bashrc

RUN mkdir /data && ln -s /data ~/TDDE05
WORKDIR /data

# expose /data as a volume
VOLUME /data
