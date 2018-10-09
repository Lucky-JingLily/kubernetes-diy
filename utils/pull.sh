#!/usr/bin/env bash

images=(
    kube-proxy-amd64:v1.11.2
    kube-controller-manager-amd64:v1.11.2
    kube-apiserver-amd64:v1.11.2
    kube-scheduler-amd64:v1.11.2
    kubernetes-dashboard-amd64:v1.8.3
    k8s-dns-sidecar-amd64:1.14.1
    k8s-dns-kube-dns-amd64:1.14.1
    k8s-dns-dnsmasq-nanny-amd64:1.14.1
    etcd-amd64:3.0.17
    pause-amd64:3.0
    pause-amd64:3.1
    k8s-dns-sidecar-amd64:1.14.8
    k8s-dns-kube-dns-amd64:1.14.8
    k8s-dns-dnsmasq-nanny-amd64:1.14.8
    heapster-influxdb-amd64:v1.3.3
    heapster-grafana-amd64:v4.4.3
    heapster-amd64:v1.5.2
    etcd-amd64:3.1.12
    fluentd-elasticsearch:v2.0.4
    cluster-autoscaler:v1.2.0
    etcd-amd64:3.2.18
    coredns:1.1.3
    redis
    nginx
    redis
    spark
    mariadb
)
docker login --username=xxx --password=xxx registry.cn-hangzhou.aliyuncs.com
for imageName in ${images[@]} ; do
    docker pull gcr.io/google_containers/$imageName
    docker tag gcr.io/google_containers/$imageName registry.cn-hangzhou.aliyuncs.com/devkevin/$imageName
    docker push registry.cn-hangzhou.aliyuncs.com/devkevin/$imageName
done

image=(
    daocloud.io/library/mysql:5.7.4
    zookeeper:3.5
    daocloud.io/library/redis:3.2.9
    daocloud.io/library/rabbitmq:3.5.1-management
    daocloud.io/library/activemq:5.13.0
    kube-proxy-amd64
    kube-controller-manager-amd64
    kube-apiserver-amd64
    kube-scheduler-amd64
    kubernetes-dashboard-amd64
    k8s-dns-sidecar-amd64
    k8s-dns-kube-dns-amd64
    k8s-dns-dnsmasq-nanny-amd64
    etcd-amd64
    pause-amd64
    pause-amd64
    k8s-dns-sidecar-amd64
    k8s-dns-kube-dns-amd64
    k8s-dns-dnsmasq-nanny-amd64
    heapster-influxdb-amd64
    heapster-grafana-amd64
    heapster-amd64
    etcd-amd64
    fluentd-elasticsearch
    cluster-autoscaler
    etcd-amd64
    coredns
    mysql
    zookeeper
    rabbitmq
    activemq
    mongo
    nexus
    node
    postgres
    mongo
    jenkins
    centos
    ubuntu
    debin
    elasticsearch
    kibana
    logstash
    hadoop
    hive
    hbase
    kafka
    maven
    golang
    tomcat
    django
    elastichq/elasticsearch-hq
    influxdb
)
for imageName in ${image[@]} ; do
    docker pull $imageName
    docker tag $imageName registry.cn-hangzhou.aliyuncs.com/devkevin/$imageName
    docker push registry.cn-hangzhou.aliyuncs.com/devkevin/$imageName
done 

docker pull quay.io/coreos/flannel:v0.7.0-amd64
docker tag quay.io/coreos/flannel:v0.7.0-amd64 registry.cn-hangzhou.aliyuncs.com/devkevin/flannel:v0.7.0-amd64
docker push registry.cn-hangzhou.aliyuncs.com/devkevin/flannel:v0.7.0-amd64
