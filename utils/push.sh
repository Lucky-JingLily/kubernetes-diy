#!/usr/bin/env bash
image=$1

docker login --username=**** --password=**** registry.cn-hangzhou.aliyuncs.com
result=$(docker pull $image | echo $?)
if [ $result -eq 0 ];then
        echo "pull image error"
        exit 1
else
        docker tag $image registry.cn-hangzhou.aliyuncs.com/devkevin/$i
        docker push registry.cn-hangzhou.aliyuncs.com/devkevin/$i
fi
