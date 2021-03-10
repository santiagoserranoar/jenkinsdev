mount -t cifs -o username=sserrano,password='Cdc6to616##',workgroup=ALLENDE //192.168.32.11/ServiciosInfra /mnt/backendev
cd /mnt/backendev
rm -rf DEV
mkdir DEV
cd DEV/
cp -R /var/lib/jenkins/workspace/BackendDev/Deploy/Publish/Development/* .
umount /mnt/backendev