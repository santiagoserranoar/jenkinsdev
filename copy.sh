mount -t cifs -o username=vagrant,password='K3n3d121', //192.168.32.11/ServiciosInfra /mnt/backendev
cd /mnt/backendev
cd DEV/
for i in $(ls -la /var/lib/jenkins/workspace/BackendDev/Deploy/Publish/Development/); do rm -rf /mnt/backendev/DEV/$i; done
cp -R /var/lib/jenkins/workspace/BackendDev/Deploy/Publish/Development/* .
cd /
umount /mnt/backendev
