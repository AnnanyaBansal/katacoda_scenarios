Now, we will make changes in .wb file first.<br>
In wb file, we need to change the versions of the images we are downloading.

We already have a reference .wb file. We just need to replace the current .wb file with the reference one. For doing so, execute the following commands.
`cd ~/Source/CDH`{{execute}}
<br>`rm -rf cdh5142.wb`{{execute}}
<br>`cp ~/task/cdh515.wb ~/Source/CDH`{{execute}}

To view the content of the file, execute the following
`cat ~/Source/CDH/cdh515.wb`{{execute}}