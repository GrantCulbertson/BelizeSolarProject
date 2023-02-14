# BelizeSolarProject

A website to monitor Solar Data from schools in Belize. 

SCMP 318 Spring 2023 at Kenyon College.

The graphics are [here](https://docs.google.com/document/d/1jhXcbkrk1JekFlCHPpZr_mavFl_XUg0e9h4HGTEOAKA/edit)

The data is [here](https://docs.google.com/document/d/1pqFQTzzB-4UMoq2QJ0riP21jfa7wyFhNyYf97Hwgo0Y/edit)


Out team will:
- create a main page to provide information on the project. 
  - a search panel to look through all the different school's subpages
  - an overview of the project
  - overall metrics on the entire system
- a set of sub pages for each school

It should be nice looking, and include buttons and/or pull down menus to navigate.

## Install and run
Installing our project requires apache2 to be installed and configured. Our site was built to run on AWS infrastructure in the cloud, but it should also work on local development enviroments.

``` 
git clone git@github.com:GrantCulbertson/BelizeSolarProject.git

cd BelizeSolarProject

sudo mkdir /var/www/html/BelizeSolarProject/

sudo chown ubuntu /var/www/html/BelizeSolarProject/ # ubuntu can be replaced with your username.

make 
````

## Mirrors
[Ricky's version](http://3.145.37.15/BelizeSolarProject/)

[Grant's version](http://18.116.8.156/BelizeSolarProject/)

[Isaac's version](http://3.86.88.80/BelizeSolarProject/)

[Sam's version](http://34.207.91.122/BelizeSolarProject)

