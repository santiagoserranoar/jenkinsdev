sudo mount -t cifs -o username=vagrant,password='K3n3d121', //192.168.32.11/ServiciosSA /mnt/backendev
for i in $(sudo ls -la /var/lib/jenkins/workspace/BackendDev/Deploy/Publish/Development/); do sudo rm -rf /mnt/backendev/DEV/$i; done
sudo cp -R /var/lib/jenkins/workspace/BackendDev/Deploy/Publish/Development/* /mnt/backendev/DEV/
sudo umount /mnt/backendev