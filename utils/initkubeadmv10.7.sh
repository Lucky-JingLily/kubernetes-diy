#!/usr/bin/env bash
export KUBE_REPO_PREFIX="registry.cn-hangzhou.aliyuncs.com/devkevin"
export KUBE_ETCD_IMAGE="registry.cn-hangzhou.aliyuncs.com/devkevin/etcd-amd64:3.2.18"

images=(
    kube-proxy-amd64:v1.10.7
    kube-controller-manager-amd64:v1.10.7
    kube-apiserver-amd64:v1.10.7
    kube-scheduler-amd64:v1.10.7
    kubernetes-dashboard-amd64:v1.10.0
    k8s-dns-sidecar-amd64:1.14.1
    k8s-dns-kube-dns-amd64:1.14.1
    k8s-dns-dnsmasq-nanny-amd64:1.14.1
    etcd-amd64:3.0.17
    pause-amd64:3.1
    k8s-dns-sidecar-amd64:1.14.8
    k8s-dns-kube-dns-amd64:1.14.8
    k8s-dns-dnsmasq-nanny-amd64:1.14.8
    heapster-influxdb-amd64:v1.3.3
    heapster-grafana-amd64:v4.4.3
    heapster-amd64:v1.5.2
    fluentd-elasticsearch:v2.0.4
    cluster-autoscaler:v1.2.0
    etcd-amd64:3.2.18
    coredns:1.1.3
    pause:3.1
)
for imageName in ${images[@]} ; do
    docker pull registry.cn-hangzhou.aliyuncs.com/devkevin/$imageName
    docker tag registry.cn-hangzhou.aliyuncs.com/devkevin/$imageName k8s.gcr.io/$imageName
done

docker pull registry.cn-hangzhou.aliyuncs.com/devkevin/flannel:v0.7.0-amd64
docker tag registry.cn-hangzhou.aliyuncs.com/devkevin/flannel:v0.7.0-amd64 k8s.gcr.io/flannel:v0.7.0-amd64

#kubeadm init \
#  --kubernetes-version=v1.10.7 \
#  --pod-network-cidr=10.244.0.0/16 \
#  --apiserver-advertise-address=10.16.0.25
