for server in $(cat list.txt); do
  echo "adding $server"
  ./addip.sh $server 
done
