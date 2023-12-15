#~/bin/myssh.sh

# Define the paths to your shell scripts

#In the your_password and your_username you can put your password and password and username. If you're uncertain about the specific username or password that will work, you can employ the - or || options for the SSH command.

sshpass -p "your_password" ssh -o StrictHostKeyChecking=no your_username@$1 || sshpass -p "your_password_2" ssh -o StrictHostKeyChecking=no your_username_2@$1

#RUNNING the script - sh <your_file_name> "<your_server_name>"
#Example sh ssh_config.sh "abc.edu.com"

