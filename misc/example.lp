<?lua
  page:print(msg)
?> <!--If this came from the controller we just created in the last section of our tutorial, this will print 'Hello'-->
<%= msg %> <!--This will do the same thing -->
<br/>

<?lua
for i=1,10 do ?>
This message will appear 10 times! This is number <%= i %>.
<?lua end ?>

<?lua
if module_doc then
	from = "libraries/"..module_doc.name
elseif hook_doc then
	from = "hooks.html"
elseif file_doc then
	from = "files/.."..file_doc.name
else
	from = ""
end
?>

<?lua@client?><!-- Serve the VM first-->

<!-- This Lua module will be automatically converted to JS if your server is properly configured -->
<script src="pub/lua/mymodule.lua"></script>

<?lua@client
 demo = require('pub.lua.mymodule')
 demo.printh1('Hello World!')
?>

<form method="post">

	<?=form.text(user,'username','placeholder="Insert a name"')?>
	<br/><br/>
	<?=form.textarea(user,'username')?>
	<br/><br/>
	<?=form.dropdown(user,'username',{hey="hey",test="test",blah="Blah Blah"},"Please select...")?>
	<br/><br/>
	<?=form.password(user,'username')?>
	<br/><br/>
	<?=form.radio_list(user,'username',{hey="hey",test="test",blah="Blah Blah"})?>
	<br/><br/>
	<?=form.radio_list(user,'password',{hey="hey",test="test",blah="Blah Blah"},'hey','vertical')?>
	<br/><br/>
	<?=form.checkbox(user,'username')?>
	<br/><br/>
	<input type="submit"/>
</form>
