Automatization project via jenkins and grunt

Requirements:
-------------

Node - http://nodejs.org/

All php tools and jenkins plugin from http://jenkins-php.org/installation.html

Installattion:
-------------

	npm install


install node_modules for grunt



	php codeception.phar bootstrap

 
install all tests


Add into main codeception.yml coverage settings 

	coverage:
	    enabled: true
	    include:
		- app/*
	    exclude:
		- app/cache/*


Change in acceptance.suite.yml (in tests directory) urk of your project for example:

 
	PhpBrowser:
            url: 'http://test-silex.loc/'


Change build.xml,phpcs.xml,phpmd.xml for your project structure

Usage:
--------

grunt test - auto-run unit,functional and acceptance tests

grunt doc - generate jsdoc and phpdoc in build directory

grunt checkstyle - check jscode via jshint and php code via phpcs



