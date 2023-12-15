# Bash Scripting

##  Loacl machine to git:

- Create a folder.
- Open the folder in VS-Code.
- Clone the Git repository using the command: 

                                          git clone <https:// ....> #copy the HTTP URL

##  SSH Key: 

Link: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent


- Generate SSH key: ssh-keygen -t rsa -b 4096 -C "your_email address" # You can provide a name or use the default (id_rsa)
- Navigate to the SSH directory: cd .ssh/
- List the files: ls
- Display the public key: cat id_rsa.pub # Copy the public key
- Configure Git: 
     - Go to Git Settings > SSH key
     - Paste the copied key and assign a name
- Edit SSH configuration:
    - eval "$(ssh-agent -s)"
    - vi .ssh/config # down is the config
    - ssh-add -K ~/.ssh/id_rsa
 
     ```
             {
                Host *
                  AddKeysToAgent yes
                  UseKeychain yes
                  IdentityFile ~/.ssh/id_rsa
             }
    ```

       
##  Git Commands: 

Link: https://gist.github.com/gwenf/19e5748a5391929e8e938a22c8a4b3f2


- Check the status of the Git repository: git status
- Add changes to the staging area: git add . # or git add file_name
- Check the status again: git status # Your branch is up to date with 'origin/main'
- Commit changes: git commit -m "<adding message>" -m "description box"
- Push in Git: git push origin main #main or master
