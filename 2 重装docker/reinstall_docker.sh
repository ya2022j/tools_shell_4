




# remove docker 
sudo systemctl stop docker

sudo yum remove docker-ce

sudo rm -rf /var/lib/docker



clear
echo
echo "#############################################################"
echo "#install docker                                            #"
echo
 

uname -r;
yum -y update;
yum remove docker  docker-common docker-selinux docker-engine;
yum install -y yum-utils device-mapper-persistent-data lvm2;

yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo;


yum list docker-ce --showduplicates | sort -r;
yum -y install docker-ce;
systemctl start docker;
systemctl enable docker;
docker  version;
