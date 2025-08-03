# Docker Environment for ROS2 & SLAM

This folder contains docker environment cloned from:
https://github.com/cesargm25/trianing_enviroment_turtlebot3_humble

## How to Use
bash
git clone ...
./build.sh
./run.sh


## How to Run
- ./run.sh
- ros2 launch turtlebot3_cartographer cartographer.launch.py
- ros2 launch nav2_bringup navigation_launch.py




# Docker Environment for ROS2 + SLAM + Navigation

This folder contains the Docker setup I am using for SLAM and Navigation development in ROS2 Humble.

## 🔧 Docker Containers Used:

1. **ros-2023-thd**
   - ROS1 Noetic container created by Prof. Dobriborsci
   - Used for basic ROS1 tools

2. **training_enviroment_turtlebot3_humble**
   - ROS2 Humble container
   - Includes:
     - TurtleBot3 packages
     - SLAM Toolbox
     - Nav2 Stack
     - RViz2

Repo: https://github.com/cesargm25/trianing_enviroment_turtlebot3_humble

## 🚀 How to Build the Docker Container:

```bash
git clone https://github.com/cesargm25/trianing_enviroment_turtlebot3_humble
cd training_enviroment_turtlebot3_humble
./build.sh
