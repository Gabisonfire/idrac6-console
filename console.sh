#!/bin/bash

echo -n 'Password: '
read -s dracpwd
echo

./jdk1.7.0_80/bin/java -cp avctKVM.jar -Djava.library.path=./lib com.avocent.idrac.kvm.Main ip=192.168.0.2 kmport=5900 vport=5900 user=root passwd=$dracpwd apcp=1 version=2 vmprivilege=true "helpurl=https://192.168.0.2:443/help/contents.html"
