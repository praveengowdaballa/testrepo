for i in $(cat ipaddress.txt) ; do

      knife bootstrap $i -x ec2-user -i 
