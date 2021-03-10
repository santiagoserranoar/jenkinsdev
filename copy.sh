sudo mount -t cifs -o username=vagrant,password='K3n3d121', //192.168.32.11/ServiciosInfra /mnt/backendev
sudo cd /mnt/backendev
sudo cd DEV/
for i in $(sudo ls -la /var/lib/jenkins/workspace/BackendDev/Deploy/Publish/Development/); do sudo rm -rf /mnt/backendev/DEV/$i; done
sudo cp -R /var/lib/jenkins/workspace/BackendDev/Deploy/Publish/Development/* .
sudo cd /
sudo umount /mnt/backendev
