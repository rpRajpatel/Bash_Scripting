# Description for the Bash script that I'm writing

Loacl machine to git: 1.) Create a folder.
                      2.) Open the folder in VS-Code.
                      3.) Clone the Git repository using the command: git clone <copy the HTTP URL from the Git repository>

SSH Key: Link: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
         1.) Generate SSH key: ssh-keygen -t rsa -b 4096 -C "<your_email address>" # You can provide a name or use the default (id_rsa)
         2.) Navigate to the SSH directory: cd .ssh/
         3.) List the files: ls
         4.) Display the public key: cat id_rsa.pub # Copy the public key
         5.) Configure Git: 
                            Go to Git Settings > SSH key
                            Paste the copied key and assign a name
         6.) Edit SSH configuration: vi .ssh/config
             {
                HostkeyAlgorithms +ssh-rsa,ssh-dss
                PubkeyAcceptedKeyTypes +ssh-rsa

                KexAlgorithms +diffie-hellman-group1-sha1,diffie-hellman-group14-sha1
             }
         7.)

Git Commands: Link: https://gist.github.com/gwenf/19e5748a5391929e8e938a22c8a4b3f2
              1.) Check the status of the Git repository: git status
              2.) Add changes to the staging area: git add . # or git add file_name
              3.) Check the status again: git status # Your branch is up to date with 'origin/main'
              4.) Commit changes: git commit -m "<adding message>" -m "description box"
              5.) Push in Git: git push origin main #main or master
