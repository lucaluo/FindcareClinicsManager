FindcareClinicsManager
======================
Install RVM
Install ruby 1.8.7
Install MySQL
> create database affordcare_clinics;
> create database affordcare_clinicsapprove;
> create database clinics_test;
> create database clinicsapprove_test;
Import db dump into the dbs
$ sudo apt-get install libmysqlclient-dev
$ gem install rails -v=3.0.3
$ bundle install  
$ cp .env_example .env  
Modify the variables in .env  
$ rake test  
