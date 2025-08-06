# SLAM_Learning
A personal learning journey into SLAM (Simultaneous Localization and Mapping) and autonomous navigation using ROS2 and TurtleBot3 for RoboCup@Work 2026.

This is my learning repository for understanding Simultaneous Localization and Mapping (SLAM), ROS2, and autonomous navigation using TurtleBot3 simulation. This repo tracks my progress as I prepare for RoboCup@Work 2026 with a focus on real-world robotics.

## 📚 Topics Covered
- SLAM fundamentals and types
- ROS2 + Docker setup
- Simulation in Gazebo with TurtleBot3
- Nav2 stack exploration
- TF2 and coordinate frames


## 📂 Folder Structure
- `docs/`: Theory notes and screenshots  
- `src/`: Technical breakdowns and code notes
- `docker/`: Docker setup and environment instructions

## 🧠 My Goal:
To master the SLAM & Navigation stack to build industrial-grade robots for real-world environments.

________________________________________________________________________________________________________________________________________________________________________
🧪 1. 🛠 How to Use (Simulation Commands)

## 🛠 How to Run the Simulation

This project runs entirely inside a pre-built Docker container with ROS2 Humble, TurtleBot3, and Nav2 stack.

You will need to open **3 terminals inside the container**:

### 🔹 Terminal 1: Launch Gazebo
```bash
source /ws_slam/install/setup.bash
export TURTLEBOT3_MODEL=burger
ros2 launch turtlebot3_gazebo turtlebot3_world.launch.py
```

🔹 Terminal 2: Launch SLAM (Cartographer)
```bash
source /ws_slam/install/setup.bash
export TURTLEBOT3_MODEL=burger
ros2 launch turtlebot3_cartographer cartographer.launch.py use_sim_time:=True
```

🔹 Terminal 3: Keyboard Teleoperation
```bash
source /ws_slam/install/setup.bash
export TURTLEBOT3_MODEL=burger
ros2 run turtlebot3_teleop teleop_keyboard
```

Once running, use WASD keys to move the robot and see live SLAM mapping in RViz.



________________________________________________________________________________________________________________________________________________________________________

### 🧭 2. **🚀 Navigation using Nav2 Stack**


## 🚀 Navigation with Nav2

After SLAM, test autonomous navigation using Nav2.

### Terminal 1: Launch Gazebo (same as above)

### Terminal 2: Launch Nav2
```bash
source /ws_slam/install/setup.bash
export TURTLEBOT3_MODEL=burger
ros2 launch turtlebot3_navigation2 navigation2.launch.py use_sim_time:=True
```

In RViz:

    Click on 2D Pose Estimate tool → click robot’s current position

    Click on 2D Nav Goal tool → click-drag towards a target location

🔁 The robot will plan a path and move autonomously avoiding obstacles.



____________________________________________________________________________________________________________________________________________________________________________

### 📸 3. **📷 Simulation Output (Images & Videos)**


## 📷 Simulation Output (Coming Soon)

> I will be adding screenshots and video demos of my SLAM map and Nav2 path planning here.

Planned:
- [ ] RViz SLAM map image
- [ ] GIF of robot navigating with Nav2
- [ ] Saved SLAM `.pgm` and `.yaml` map files

📂 Assets will be added under `assets/screenshots/`, `assets/videos/`, and `assets/maps/`.

