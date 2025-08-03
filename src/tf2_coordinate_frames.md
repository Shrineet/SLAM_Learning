# Understanding TF2 and Coordinate Frames

TF2 allows ROS2 to keep track of multiple coordinate frames (like base_link, odom, map, etc.).

## Common Frames:
- `map`: Global reference frame
- `odom`: Robot's movement relative to start point
- `base_link`: Center of the robot
- `laser`: Sensor frame for LIDAR

## Example Use:
- `ros2 run tf2_tools view_frames.py` → visualize frames
- Important for localization + mapping accuracy
