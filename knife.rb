Workstation : 
1. Download Chefdk  (https://packages.chef.io/files/stable/chefdk/1.4.3/el/7/chefdk-1.4.3-1.el7.x86_64.rpm)
2. rpm ivh chefdk-1.4.3-1.el7.x86_64.rpm
3. mkdir /etc/chef/testorg
4. Copy chefadmin.pem from Chef server and paste it here 
5. Copy testorg-validator.pem from Chefserver and paste it here 
6. vi knife.rb

log_level :info
log_location     STDOUT
node_name     "chefadmin"
chef_server_url  "https://ip-172-31-10-45/organizations/testorg"
validation_client_name "testorg-validator"
validation_key "/etc/chef/testorg/testorg-validator.pem"
client_key     "/etc/chef/testorg/chefadmin.pem"
ssl_verify_mode  :verify_none
cookbooks_path   "/etc/chef/testorg/cookbooks/"

7. Knife node list   ( this should show the machines which are regiestered to the chef server)

