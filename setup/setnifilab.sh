for server in $(cat hostnames.txt); do
   echo "Sending $server"
   scp  -q -o StrictHostKeyChecking=no -i hol.pem build.py centos@$server:/tmp/resources 
   ssh  -q -o StrictHostKeyChecking=no -i hol.pem centos@$server "cd /tmp/resources; python3 /tmp/resources/build.py"
done
