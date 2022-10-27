# ubuntu_base_arm

通过lb构建arm架构的ubuntu基础系统, 可以根据需要移植的平台，修改编译脚本，增加自己的驱动或软件包并打包成rootfs.

## 1. install qemu-user-static and live-build
`sudo apt-get install binfmt-support qemu-user-static live-build`

## 2. build ubuntu base system
`./mk-rootfs.sh`


