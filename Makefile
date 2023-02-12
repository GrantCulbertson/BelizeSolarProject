# Make file for BelizeSolarProject
#
# Best if you you have the following packages installed
#	- apache2
#	- node
#	- npm
#
# Before you run this make file make sure the folder
# /var/www/html/BelizeSolarProject exists and it's ownership/permissions are correct
# 
# or you could also just run make setup...
#
# Also if you want nicer formatted file tree output in your terminal, use:
# $ sudo apt install tree
#
# Later we will add some routines for some fancy stuff with our styles, babel for js, and some other fancy NPM shit.


.DEFAULT_TARGET: all

all: setup putBootstrap putHTML

setup:
	# Setting up web directory
	-mkdir /var/www/html/BelizeSolarProject
	-mkdir /var/www/html/BelizeSolarProject/styles
	-mkdir /var/www/html/BelizeSolarProject/scripts

putBootstrap:
	# moving over latest bootstrap files into web directory
	-mkdir /var/www/html/BelizeSolarProject/styles/bootstrap
	-mkdir /var/www/html/BelizeSolarProject/scripts/bootstrap
	cp node_modules/bootstrap/dist/css/* /var/www/html/BelizeSolarProject/styles/bootstrap/ -r
	cp node_modules/bootstrap/dist/js/* /var/www/html/BelizeSolarProject/scripts/bootstrap/ -r

putHTML:
	
	# Copy all the html pages to web directory
	cp src/pages/* /var/www/html/BelizeSolarProject/ -r
	cp src/styles/* /var/www/html/BelizeSolarProject/styles/ -r
	cp src/scripts/* /var/www/html/BelizeSolarProject/scripts/ -r

	@echo "\n\nCurrent contents of your html directory: "
	ls -la /var/www/html/

clean:
	-rm -dR /var/www/html/BelizeSolarProject
