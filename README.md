Automatization project via jenkins and grunt

Requirements:
-------------

Node - http://nodejs.org/

All php tools and jenkins plugin from http://jenkins-php.org/installation.html

Installattion:
-------------
    init.sh

It creates all neccessary files, such as a phpdoc.xml, the package.json etc.

	npm install


install node_modules for grunt



	php codeception.phar bootstrap

 
install all tests


Additional Installation:
-----------------------

phpcs
http://pear.php.net/package/PHP_CodeSniffer/

phploc
https://github.com/sebastianbergmann/phploc

pdepend
http://pdepend.org/

phpmd
http://phpmd.org/

phpcpd
https://github.com/sebastianbergmann/phpcpd



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


Change build.xml,phpcs.xml,phpmd.xml for your project structure.
Make codecept.phar global (move it to /urs/local/bin/codeception)

    mv codecept.phar /usr/local/bin/codeception

Make phpDocumentator global

    mv phpDocumentor.phar /usr/bin/phpdoc

If you don't want to make its global, so, please, rename all codeception into php codecept.phar
and phpdoc into php phpDocumentor.phar

For Windows:
-----------

If you use windows, rename build.windows.xml into build.xml

and rename Gruntfile.windows.js into Gruntfile.js


Usage:
--------

grunt test - auto-run unit,functional and acceptance tests

grunt doc - generate jsdoc and phpdoc in build directory

grunt checkstyle - check jscode via jshint and php code via phpcs

grunt reports - generate all reports (unit,acceptance,functional,js doc and php doc)



