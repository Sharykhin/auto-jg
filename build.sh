echo '<?xml version="1.0" encoding="UTF-8"?>' > cs.xml
echo '  <ruleset name="name-of-your-coding-standard">' >> cs.xml
echo '      <description>Description of your coding standard</description>' >> cs.xml
echo '      <!-- exclude patterns -->' >> cs.xml
echo '      <exclude-pattern>vendor/*</exclude-pattern>' >> cs.xml
echo '      <exclude-pattern>tests/_data/*</exclude-pattern>' >> cs.xml
echo '      <exclude-pattern>tests/_log/*</exclude-pattern>' >> cs.xml
echo '      <exclude-pattern>tests/_bootstrap.php</exclude-pattern>' >> cs.xml
echo '      <exclude-pattern>tests/*.yml</exclude-pattern>' >> cs.xml
echo '      <!--<rule ref="Generic.PHP.DisallowShortOpenTag"/>-->' >> cs.xml
echo '      <rule ref="Generic.CodeAnalysis.UnusedFunctionParameter"/>' >> cs.xml
echo '      <rule ref="Generic.Commenting.Todo"/>' >> cs.xml
echo '      <rule ref="Generic.Classes.DuplicateClassName" />' >> cs.xml
echo '      <rule ref="Generic.PHP.DeprecatedFunctions" />' >> cs.xml
echo '      <rule ref="PEAR.NamingConventions.ValidClassName" />' >> cs.xml
echo '      <!--<rule ref="PEAR.Commenting.FunctionComment" />-->' >> cs.xml
echo '      <!--<rule ref="Generic.Commenting.DocComment" />-->' >> cs.xml
echo '      <rule ref="Generic.Commenting.Todo.CommentFound">' >> cs.xml
echo '          <message>Please review this TODO comment: %s</message>' >> cs.xml
echo '          <severity>3</severity>' >> cs.xml
echo '      </rule>' >> cs.xml
echo '   </ruleset>' >> cs.xml


echo '<?xml version="1.0" encoding="UTF-8" ?>' > doc.xml
echo '<phpdoc>' >> doc.xml
echo '   <!-- directory, where documentation will be generated -->' >> doc.xml
echo '   <parser>' >> doc.xml
echo '       <target>build/docs/phpdoc</target>' >> doc.xml
echo '   </parser>' >> doc.xml
echo '   <transformer>' >> doc.xml
echo '       <target>build/docs/phpdoc</target>' >> doc.xml
echo '   </transformer>' >> doc.xml
echo '   <!-- use template -->' >> doc.xml
echo '   <transformations>' >> doc.xml
echo '       <template name="responsive-twig"></template>' >> doc.xml
echo '   </transformations>' >> doc.xml
echo '   <!-- include or exclude files and directories -->' >> doc.xml
echo '   <files>' >> doc.xml
echo '       <directory>lib</directory>' >> doc.xml
echo '       <ignore>lib/classes/*</ignore>' >> doc.xml
echo '       <ignore>lib/ExtConstructor/*</ignore>' >> doc.xml
echo '       <ignore>lib/Smarty/*</ignore>' >> doc.xml
echo '       <ignore>lib/Unit/*</ignore>' >> doc.xml
echo '       <ignore>lib/Xml2Selenium/*</ignore>' >> doc.xml
echo '       <ignore>lib/Zend/*</ignore>' >> doc.xml
echo '      <ignore>lib/Image/*</ignore>' >> doc.xml
echo '       <ignore>lib/sms/*</ignore>' >> doc.xml
echo '       <ignore>lib/Image.php</ignore>' >> doc.xml
echo '       <ignore>lib/img_lib.php</ignore>' >> doc.xml
echo '       <ignore>lib/mysql.class.php</ignore>' >> doc.xml
echo '       <ignore>lib/mysql.functions.php</ignore>' >> doc.xml
echo '      <ignore>lib/RegistController.php</ignore>' >> doc.xml
echo '       <ignore>lib/resize.php</ignore>' >> doc.xml
echo '       <ignore>lib/server.class.php</ignore>' >> doc.xml
echo '       <ignore>lib/strings.class.php</ignore>' >> doc.xml
echo '   </files>' >> doc.xml
echo '   <!--<files>-->' >> doc.xml
echo '   <!--<file>test.php</file>-->' >> doc.xml
echo '   <!--<file>bin/*</file>-->' >> doc.xml
echo '   <!--<directory>src</directory>-->' >> doc.xml
echo '   <!--<directory>tes??</directory>-->' >> doc.xml
echo '   <!--<ignore>test/*</ignore>-->' >> doc.xml
echo '   <!--</files>-->' >> doc.xml
echo '</phpdoc>' >> doc.xml


