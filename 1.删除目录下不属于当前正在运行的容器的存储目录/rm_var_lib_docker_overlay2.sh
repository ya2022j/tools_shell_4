# 删除目录下不属于当前正在运行的容器的存储目录（/var/lib/docker/overlay2）


#!/bin/bash

# 获取当前正在运行的容器ID列表
running_containers=$(docker ps -q --no-trunc)

# 遍历Overlay2目录下的所有子目录
for overlay_dir in $(ls -d /var/lib/docker/overlay2/*/)
do
    # 提取Overlay2目录名称
    dir_name=$(basename $overlay_dir)
    
    # 判断是否为正在运行的容器
    if [[ ! "$running_containers" =~ "$dir_name" ]]; then
        echo "Deleting $overlay_dir"
        rm -rf $overlay_dir
    fi
done
