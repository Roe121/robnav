cd ../workspace
catkin_make
gnome-terminal -- roslaunch turtlebot3_gazebo room.launch
export TURTLEBOT3_MODEL=burger
gnome-terminal -- roslaunch turtlebot3_slam turtlebot3_slam.launch slam_methods:=gmapping
gnome-terminal -- roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch