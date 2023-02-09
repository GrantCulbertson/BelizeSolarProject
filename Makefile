# Make file for BelizeSolarProject
#
# Before you run this make file make sure the folder
# /var/www/html/BelizeSolarProject exists and it's ownership/permissions are correct
# 
# or you could also just run make setup..
#
# Also if you want nicer formatted fille tree output in your terminal, use:
# $ sudo apt install tree

all: setup putHTML

setup:
	@echo "Setting up..."
	-mkdir /var/www/html/BelizeSolarProject/

putHTML:
	
	@echo "\n\n"
	# Copy all the html pages 
	cp src/pages/* /var/www/html/BelizeSolarProject -r
	cp src/styles/* /var/www/html/BelizeSolarProject -r
	cp src/scripts/* /var/www/html/BelizeSolarProject -r

	@echo "\n\nCurrent contents of your html directory: "
	@# tree /var/www/html
	ls -la /var/www/html/
