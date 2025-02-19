FROM osrf/ros:noetic-desktop-full

RUN apt-get update && apt-get install -y git \
 && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /catkin_ws/src

RUN cd /catkin_ws/src \
 && git clone https://github.com/ICAR-2021/adaptive-lidar-tracking.git 

RUN cd /catkin_ws \
 && apt-get update \
 && rosdep install --from-paths src --ignore-src -r -y \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

SHELL ["/bin/bash", "-c"]

RUN cd /catkin_ws \
 && source /opt/ros/${ROS_DISTRO}/setup.bash \
 && catkin_make

