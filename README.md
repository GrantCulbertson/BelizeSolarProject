# BelizeSolarProject

A website to monitor Solar Data from schools in Belize. 

SCMP 318 Spring 2023 at Kenyon College.

The data is [here](https://docs.google.com/document/d/1jhXcbkrk1JekFlCHPpZr_mavFl_XUg0e9h4HGTEOAKA/edit)

Out team will:
- create a main page to provide information on the project. 
- a set of sub pages for each school

It should be nice looking, and include buttons and/or pull down menus to navigate.

## Install and run
Installing our project requires apache2 to be installed and configured. Our site was built to run on AWS infrastructure in the cloud, but it should also work on local development enviroments.

``` 
git clone git@github.com:GrantCulbertson/BelizeSolarProject.git
cd BelizeSolarProject
sudo mkdir /var/www/html/BelizeSolarProject/
sudo chown ubuntu /var/www/html/BelizeSolarProject/ , Ubuntu can be replaced with whatever your username is if it is different.
make 
````

## Mirrors
[Ricky's version](http://18.117.104.28/BelizeSolarProject/)

