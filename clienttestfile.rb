1. Run t2.medium instance
2. Wget https://packages.chef.io/files/stable/chef-server/12.15.7/el/7/chef-server-core-12.15.7-1.el7.x86_64.rpm
3. Run rpm -ivh chef-server-core-12.15.7-1.el7.x86_64.rpm
4. chef-server-ctl reconfigure
4. chef-server-ctl user-create chefadmin Chef Admin chefadmin@chef.io 'abc123' --filename /root/chefserver/user.pem
/root/chefserver
chef-server-ctl user-create praveenadmin Praveen Admin praveenadmin@chef.io 'praveen123' --filename /etc/chef/chefadmin.pem
