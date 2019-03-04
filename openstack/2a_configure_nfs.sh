NFS_SERVER=192.168.3.96
NFS_PATH=/srv/home
helm install --name nfs-client --set nfs.server=$NFS_SERVER --set nfs.path=$NFS_PATH stable/nfs-client-provisioner
