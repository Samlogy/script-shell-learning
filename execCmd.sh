# Execute linux command lines inside our script

var=`df -h | grep tmpfs`
echo $var

## creact new_file and open it iwth gedit
touch newFile && gedit newFile  

##  if newDir does not exist then create it
[-d newDir ] || mkdir newDir    
