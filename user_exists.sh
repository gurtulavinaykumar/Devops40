#!/bin/bash
if [ $# -gt 0 ]
then
users=$@
for user in ${users[$@]};
do  
Existing_user=$(cat /etc/passwd | grep -i -w $user | cut -d ':' -f1)
if [ "${Exising_user}" = "${user}" ];
then
echo "User with username $user Already exists try a different user"
else
echo "Lets create a user $user"
fi
done
else
echo "please enter valid Input"
fi

