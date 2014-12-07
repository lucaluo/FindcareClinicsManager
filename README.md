FindcareClinicsManager
======================
Create databases affordcare_clinics, affordcare_clinicsapprove, clinics_test, clinicsapprove_test
Import db dump into the dbs
$ sudo apt-get install libmysqlclient-dev
$ bundle install
$ cp .env_example .env
Modify the variables in .env
$ rake test
