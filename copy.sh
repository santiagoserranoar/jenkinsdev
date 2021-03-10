sudo mount -t cifs -o username=vagrant,password='K3n3d121', //192.168.32.11/ServiciosInfra /mnt/backendev
sudo /mnt/backendev
sudo cd DEV/
sudo for i in $(ls -la /var/lib/jenkins/workspace/BackendDev/Deploy/Publish/Development/); do rm -rf /mnt/backendev/DEV/$i; done
sudo cp -R /var/lib/jenkins/workspace/BackendDev/Deploy/Publish/Development/* .
sudo cd /
sudo umount /mnt/backendev
