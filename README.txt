Simulate robot control in 3D environment.

The 3D scene rendering is handled by Qt Quick 3D.

The robot control logic is implemented in C++ with ROS.

The manipulator is a joystick game controller.

=== Requirements

- ROS 1 noetic
- ROS 1 joy package
- Qt (w/ Qt Quick 3D)

=== Procedure

1. Create the workspace:
   ```bash
   # at current directory
   mkdir src
   catkin_make
   ```
   This automatically generate the ROS workspace and the top level CMakeLists.txt.

2. Create the package:
   ```bash
   # at src directory
   catkin_create_pkg joy_ctr_sim roscpp joy
   ```
   This creates the package directory and the CMakeLists.txt.
