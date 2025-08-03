# ROS2 Nav2 Stack Overview

Nav2 is the navigation stack in ROS2 that lets the robot:
- Localize itself on a given map
- Plan paths avoiding obstacles
- Follow paths to reach target goals

## Basic Components:
- Global Planner
- Local Planner
- Costmap
- Controller Server

## Next Steps:
- Launch Nav2 stack with TurtleBot3
- Send goal via RViz2


| Layer / Role        | Package / Node                   | WORK                            |
| ------------------- | -------------------------------- | ------------------------------- |
| 🗺️ Map handling     | `map_server`                     | Static map load/save            |
| 🧭 Localization     | `amcl`                           | position estimate of a Robot    |
| 🧠 Navigation logic | `bt_navigator`                   | Navigate using Behavior tree    |
| 📐 Path planning    | `planner_server`                 | Path Plan till goal             |
| 🚗 Path following   | `controller_server`              | Run Smoothly                    |
| 🧹 Obstacle map     | `costmap_2d`                     | Track Obstacles t               |
| 📬 Command handler  | `lifecycle_manager`, `nav2_util` | Startup/Shutdown control        |
| 👁 Visualization    |  `rviz2`                          | GUI control and view           |
