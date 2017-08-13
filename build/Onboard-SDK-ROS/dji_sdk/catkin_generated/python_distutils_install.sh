#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk"

# snsure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/aswath/ros/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/aswath/ros/install/lib/python2.7/dist-packages:/home/aswath/ros/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/aswath/ros/build" \
    "/usr/bin/python" \
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/setup.py" \
    build --build-base "/home/aswath/ros/build/Onboard-SDK-ROS/dji_sdk" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/aswath/ros/install" --install-scripts="/home/aswath/ros/install/bin"
