#!/bin/bash

# Source setup and export model
source /ros2_ws/install/setup.bash
export TURTLEBOT3_MODEL=burger

# Launch Gazebo + spawn robot
gnome-terminal -- bash -c "ros2 launch turtlebot3_gazebo turtlebot3_world.launch.py; exec bash"

# Launch SLAM + RViz2
gnome-terminal -- bash -c "ros2 launch turtlebot3_cartographer cartographer.launch.py use_sim_time:=True; exec bash"

# Launch teleop (keyboard control)
gnome-terminal -- bash -c "ros2 run turtlebot3_teleop teleop_keyboard; exec bash"
