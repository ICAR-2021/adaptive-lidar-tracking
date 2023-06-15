
**NOTE:** The code in this repository is being updated/uploaded and only initial versions of some of the ROS nodes are available at the moment. For details about the full implementation (will be available soon), please visit our website at:

[https://tiers.utu.fi/paper/qingqing2021adaptive](https://tiers.utu.fi/paper/qingqing2021adaptive)


# Adaptive lidar tracking

![](demo.gif)

Tracking MAVs from ground robots with adaptive lidar scan integration

## Summary

TO DO

## Installation

TO DO

### Compiling on Ubuntu 20.04, ROS Noetic, and OpenCV 4.2.0

```
sudo apt update
sudo apt install libopencv-dev
cd ~/catkin_ws/src
git clone https://github.com/ICAR-2021/adaptive-lidar-tracking.git
cd ~/catkin_ws
source /opt/ros/noetic/setup.bash
rosdep install --from-paths src --ignore-src -r -y
catkin_make
```

### Docker
Build:
```
docker build -t adaptive-lidar-tracking .
```

Execute:
```
docker run --rm -it adaptive-lidar-tracking
```

## Run it

### Tello Motion Start

The `tello_motion` node is a simple ROS node that uses UWB positioning as feedback for predefined Tello trajectories. This sample version will perform a circle. Rut it with:

```
roslaunch adaptive_lidar_tracking tello_motion.launch
```

Parameters include:
```
position_topic: "/dwm1001/tag/XXXX/position"         
drone_cmd_topic: "/tello/cmd_vel" 
takeoff_height: 1.0 
drone_speed: 0.6
```

For the UWB positioning node that publishes the Tello position to the `position_topic`, please refer to the passive UWB node in:

[https://github.com/TIERS/ros-dwm1001-uwb-localization](https://github.com/TIERS/ros-dwm1001-uwb-localization)

## Contact

For any questions, write to `jopequ@utu.fi`, `qingqli@utu.fi`, or `xianjia.yu@utu.fi`.

Visit us at [https://tiers.utu.fi](https://tiers.utu.fi)
