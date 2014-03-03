echo '<?xml version="1.0" encoding="UTF-8"?>' > phpcs.xml
echo '  <ruleset name="name-of-your-coding-standard">' >> phpcs.xml
echo '      <description>Description of your coding standard</description>' >> phpcs.xml
echo '      <!-- exclude patterns -->' >> phpcs.xml
echo '      <exclude-pattern>vendor/*</exclude-pattern>' >> phpcs.xml
echo '      <exclude-pattern>tests/_data/*</exclude-pattern>' >> phpcs.xml
echo '      <exclude-pattern>tests/_log/*</exclude-pattern>' >> phpcs.xml
echo '      <exclude-pattern>tests/_bootstrap.php</exclude-pattern>' >> phpcs.xml
echo '      <exclude-pattern>tests/*.yml</exclude-pattern>' >> phpcs.xml
echo '      <!--<rule ref="Generic.PHP.DisallowShortOpenTag"/>-->' >> phpcs.xml
echo '      <rule ref="Generic.CodeAnalysis.UnusedFunctionParameter"/>' >> phpcs.xml
echo '      <rule ref="Generic.Commenting.Todo"/>' >> phpcs.xml
echo '      <rule ref="Generic.Classes.DuplicateClassName" />' >> phpcs.xml
echo '      <rule ref="Generic.PHP.DeprecatedFunctions" />' >> phpcs.xml
echo '      <rule ref="PEAR.NamingConventions.ValidClassName" />' >> phpcs.xml
echo '      <!--<rule ref="PEAR.Commenting.FunctionComment" />-->' >> phpcs.xml
echo '      <!--<rule ref="Generic.Commenting.DocComment" />-->' >> phpcs.xml
echo '      <rule ref="Generic.Commenting.Todo.CommentFound">' >> phpcs.xml
echo '          <message>Please review this TODO comment: %s</message>' >> phpcs.xml
echo '          <severity>3</severity>' >> phpcs.xml
echo '      </rule>' >> phpcs.xml
echo '   </ruleset>' >> phpcs.xml


echo '<?xml version="1.0" encoding="UTF-8" ?>' > phpdoc.xml
echo '<phpdoc>' >> phpdoc.xml
echo '   <!-- directory, where documentation will be generated -->' >> phpdoc.xml
echo '   <parser>' >> phpdoc.xml
echo '       <target>build/docs/phpdoc</target>' >> phpdoc.xml
echo '   </parser>' >> phpdoc.xml
echo '   <transformer>' >> phpdoc.xml
echo '       <target>build/docs/phpdoc</target>' >> phpdoc.xml
echo '   </transformer>' >> phpdoc.xml
echo '   <!-- use template -->' >> phpdoc.xml
echo '   <transformations>' >> phpdoc.xml
echo '       <template name="responsive-twig"></template>' >> phpdoc.xml
echo '   </transformations>' >> phpdoc.xml
echo '   <!-- include or exclude files and directories -->' >> phpdoc.xml
echo '   <files>' >> phpdoc.xml
echo '       <directory>lib</directory>' >> phpdoc.xml
echo '       <ignore>lib/classes/*</ignore>' >> phpdoc.xml
echo '       <ignore>lib/ExtConstructor/*</ignore>' >> phpdoc.xml
echo '       <ignore>lib/Smarty/*</ignore>' >> phpdoc.xml
echo '       <ignore>lib/Unit/*</ignore>' >> phpdoc.xml
echo '       <ignore>lib/Xml2Selenium/*</ignore>' >> phpdoc.xml
echo '       <ignore>lib/Zend/*</ignore>' >> phpdoc.xml
echo '      <ignore>lib/Image/*</ignore>' >> phpdoc.xml
echo '       <ignore>lib/sms/*</ignore>' >> phpdoc.xml
echo '       <ignore>lib/Image.php</ignore>' >> phpdoc.xml
echo '       <ignore>lib/img_lib.php</ignore>' >> phpdoc.xml
echo '       <ignore>lib/mysql.class.php</ignore>' >> phpdoc.xml
echo '       <ignore>lib/mysql.functions.php</ignore>' >> phpdoc.xml
echo '      <ignore>lib/RegistController.php</ignore>' >> phpdoc.xml
echo '       <ignore>lib/resize.php</ignore>' >> phpdoc.xml
echo '       <ignore>lib/server.class.php</ignore>' >> phpdoc.xml
echo '       <ignore>lib/strings.class.php</ignore>' >> phpdoc.xml
echo '   </files>' >> phpdoc.xml
echo '   <!--<files>-->' >> phpdoc.xml
echo '   <!--<file>test.php</file>-->' >> phpdoc.xml
echo '   <!--<file>bin/*</file>-->' >> phpdoc.xml
echo '   <!--<directory>src</directory>-->' >> phpdoc.xml
echo '   <!--<directory>tes??</directory>-->' >> phpdoc.xml
echo '   <!--<ignore>test/*</ignore>-->' >> phpdoc.xml
echo '   <!--</files>-->' >> phpdoc.xml
echo '</phpdoc>' >> phpdoc.xml


echo '<?xml version="1.0" encoding="UTF-8" ?>' > phpmd.xml
echo '<ruleset name="name-of-your-coding-standard"' >> phpmd.xml
echo '        xmlns="http://pmd.sf.net/ruleset/1.0.0"' >> phpmd.xml
echo '        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"' >> phpmd.xml
echo '        xsi:schemaLocation="http://pmd.sf.net/ruleset/1.0.0' >> phpmd.xml
echo '                    http://pmd.sf.net/ruleset_xml_schema.xsd"' >> phpmd.xml
echo '        xsi:noNamespaceSchemaLocation="http://pmd.sf.net/ruleset_xml_schema.xsd">' >> phpmd.xml
echo '   <description>Description of your coding standard</description>' >> phpmd.xml
echo '  <!-- exclude patterns -->' >> phpmd.xml
echo '   <exclude-pattern>.*/vendor/.*</exclude-pattern>' >> phpmd.xml
echo '   <exclude-pattern>tests/_data/.*</exclude-pattern>' >> phpmd.xml
echo '   <exclude-pattern>tests/_log/.*</exclude-pattern>' >> phpmd.xml
echo '   <exclude-pattern>tests/_bootstrap.php</exclude-pattern>' >> phpmd.xml
echo '   <exclude-pattern>tests/.*.yml</exclude-pattern>' >> phpmd.xml
echo '   <!--<include-pattern>.*/some/package/ButNotThisClass.*</include-pattern>-->' >> phpmd.xml
echo '   <rule ref="rulesets/unusedcode.xml" >' >> phpmd.xml
echo '   </rule>' >> phpmd.xml
echo '   <rule ref="rulesets/codesize.xml">' >> phpmd.xml
echo '       <exclude name="CyclomaticComplexity" />' >> phpmd.xml
echo '       <exclude name="NPathComplexity" />' >> phpmd.xml
echo '       <exclude name="ExcessiveMethodLength" />' >> phpmd.xml
echo '       <exclude name="ExcessiveClassLength" />' >> phpmd.xml
echo '       <exclude name="ExcessiveParameterList" />' >> phpmd.xml
echo '       <exclude name="ExcessivePublicCount" />' >> phpmd.xml
echo '       <exclude name="ExcessiveClassComplexity" />' >> phpmd.xml
echo '   </rule>' >> phpmd.xml
echo '   <!--<rule ref="rulesets/design.xml">-->' >> phpmd.xml
echo '   <!--</rule>-->' >> phpmd.xml
echo '   <rule ref="rulesets/naming.xml">' >> phpmd.xml
echo '       <exclude name="ConstructorWithNameAsEnclosingClass" />' >> phpmd.xml
echo '       <exclude name="BooleanGetMethodName" />' >> phpmd.xml
echo '   </rule>' >> phpmd.xml
echo '   <!-- ... -->' >> phpmd.xml
echo '</ruleset>' >> phpmd.xml


echo '{' > package.json
echo '  "name": "test-kenkins",' >> package.json
echo '  "version": "0.0.0",' >> package.json
echo '  "description": "",' >> package.json
echo '  "main": "Gruntfile.js",' >> package.json
echo '  "directories": {' >> package.json
echo '    "test": "tests"' >> package.json
echo '  },' >> package.json
echo '  "scripts": {' >> package.json
echo '    "test": "echo \"Error: no test specified\" && exit 1"' >> package.json
echo '  },' >> package.json
echo '  "repository": {' >> package.json
echo '    "type": "git",' >> package.json
echo '    "url": "https://github.com/Sharykhin/test-silex.git"' >> package.json
echo '  },' >> package.json
echo '  "author": "",' >> package.json
echo '  "license": "ISC",' >> package.json
echo '  "bugs": {' >> package.json
echo '    "url": "https://github.com/Sharykhin/test-silex/issues"' >> package.json
echo '  },' >> package.json
echo '  "homepage": "https://github.com/Sharykhin/test-silex",' >> package.json
echo '  "devDependencies": {' >> package.json
echo '    "grunt": "~0.4.2",' >> package.json
echo '    "grunt-contrib-jshint": "~0.8.0",' >> package.json
echo '    "grunt-contrib-watch": "~0.5.3",' >> package.json
echo '    "grunt-exec": "~0.4.3",' >> package.json
echo '    "grunt-jsdoc": "~0.5.1",' >> package.json
echo '    "jsdoc": "~3.3.0-alpha4"' >> package.json
echo '  }' >> package.json
echo '}' >> package.json



