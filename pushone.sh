image=$1
docker login --username=623620767@qq.com --password=jyj8023LPJ registry.cn-hangzhou.aliyuncs.com
name=$(echo $image | awk -F '/' '{print $NF}')
docker tag $image registry.cn-hangzhou.aliyuncs.com/devkevin/$name
docker push registry.cn-hangzhou.aliyuncs.com/devkevin/$name
