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

.default: all 

all: clean setup install installBootstrap

setup:
	# Setting up web directory
	-npm install
	-mkdir /var/www/html/BelizeSolarProject
	-mkdir /var/www/html/BelizeSolarProject/public/images -p
	-mkdir /var/www/html/BelizeSolarProject/scripts/bootstrap -p
	-mkdir /var/www/html/BelizeSolarProject/styles/bootstrap -p

installBootstrap: node_modules/*
	# npm install 
	# moving over latest bootstrap files into web directory
	cp public/* /var/www/html/BelizeSolarProject/public/images/ -r
	cp node_modules/bootstrap/dist/css/* /var/www/html/BelizeSolarProject/styles/bootstrap/ -r
	cp node_modules/@popperjs/core/dist/cjs/* /var/www/html/BelizeSolarProject/scripts/bootstrap/ -r
	cp node_modules/bootstrap/dist/js/* /var/www/html/BelizeSolarProject/scripts/bootstrap/ -r

install: public/* src/*
	
	# Copy all the html pages to web directory
	cp src/pages/* /var/www/html/BelizeSolarProject/ -r
	cp src/styles/* /var/www/html/BelizeSolarProject/styles/ -r
	cp src/scripts/* /var/www/html/BelizeSolarProject/scripts/ -r
	

	@echo "\n\nCurrent contents of your project directory: "
	ls -la /var/www/html/BelizeSolarProject/

update:
	#Copy all the html pages to web directory
	cp src/pages/* /var/www/html/BelizeSolarProject/ -r
	cp src/styles/* /var/www/html/BelizeSolarProject/styles/ -r
	cp src/scripts/* /var/www/html/BelizeSolarProject/scripts/ -r

clean:
	-rm -dR /var/www/html/BelizeSolarProject
