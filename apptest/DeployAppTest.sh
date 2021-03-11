sudo mount -t cifs -o username=vagrant,password='K3n3d121', //192.168.32.40/ServiciosSA /mnt/backendtest
for i in $(sudo ls -la /var/lib/jenkins/workspace/BackendDev/Deploy/Publish/Development/); do sudo rm -rf /mnt/backendtest/TEST/$i; done
sudo cp -R /var/lib/jenkins/workspace/BackendDev/Deploy/Publish/Development/* /mnt/backendtest/TEST/
sudo umount /mnt/backendtest