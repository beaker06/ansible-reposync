#This playbook was made by Brandon Eaker in order to make a repository mirror in the simplist way. The user can take this playbook
#and make the necessary changes in the repo-vars.yml file. This playbook is ran on the local host that the mirror will be on. 

#In the repo-vars.yml start by changing the parent directory that you want the mirror to be stored. The variable names need to
#stay the same but the variable itself can be modified. 

#Set the share-nginx variable. This will ensure that the NGINX is installed on the system and will share the repositories after
#they have been downloaded. If you do not want the repoitory shared over NGINX then set this to NO. 

#The repo variables once again need to keep the same variables present but the content will change.

##ARBITRARY DISCRIPTOR (EPEL8)

#  - id: REPOID (epel-8)
#    name: REPONAME (epel)
#    os: OSNAME (epel)
#    version: VERSION (8)
#    enable: 1 or 0 (1 = enabled, 0 = disabled)
#    key: GPGKEY (RPM-GPG-KEY-EPEL-8)
#    baseurl: BASEURL FOR THE EXTERNAL REPOSITORY (https://dl.fedoraproject.org/pub/epel/8/Everything/x86_64/)


#There are tags included in the playbooks so that any part of the playbook can be ran alone for either testing or to make changes. 

#This tags are:
# - directory
# - gpgkeys
# - repofiles
# - createrepo
# - nginx

#To see the specific plays that each tag runs, please "cat reposync.yml"

#To run just the play with specific tags use the command:
# ansible-playbook reposync.yml -tags $TAGNAME

#Change $TAGNAME with the appropriate tag (or tags)

#You can implement the ansible-vault or --ask-vault-pass. 

#The out of the box script uses the -bkK which is:
# -b (--become)
# -k (--ask-pass)
# -K (--ask-become-pass)
# -vv (adds 2 levels of verbosity)


#For additional information about cli command usage please see: 
# https://docs.ansible.com/ansible/latest/cli/ansible-playbook.html
