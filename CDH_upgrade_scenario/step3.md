In this step we will extract the contents of the .bin file.
For this execute the following command.<br>
`./bdcatalog-centos7-bluedata-cdh51427x-1.3.bin --payload`{{execute}}
<br>
This will create two files in the directory. (to view the files execute the following command)<br>
`ls`{{execute}}
<br>Untar the payload.tar file by executing the following command
`tar xvf payload.tar`{{execute}}
<br>This will create new directories. (to view the files execute the following command)<br>
`ls`{{execute}}
<br>Navigate to the new directory, and untar the file by executing the following command
`cd bdcatalog-centos7-bluedata-cdh51427x-1.3`{{execute}}
<br>
`tar xvf bdcatalog-centos7-bluedata-cdh51427x-1.3-src.tgz`{{execute}}
Now navigate to the directory created after the above step
`cd bdcatalog-centos7-bluedata-cdh51427x-1.3-src`{{execute}}

Copy the content of this directory to the directory you created initially
`cp -R * ~/Source/CDH`{{execute}}
