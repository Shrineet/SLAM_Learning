# 🧭 NAV2 Startup Guide – TurtleBot3

## Terminal 1 – Start Gazebo world
```bash
source /ws_slam/install/setup.bash
export TURTLEBOT3_MODEL=burger
ros2 launch turtlebot3_gazebo turtlebot3_world.launch.py


## Terminal 2 – Launch Nav2 stack 
source /ws_slam/install/setup.bash
export TURTLEBOT3_MODEL=burger
ros2 launch turtlebot3_navigation2 navigation2.launch.py use_sim_time:=True

