For upgrading the image, we will be using a bin file of the older image already developed. Let us download a .bin file to the directory we have created. Before that, let us install wget package. For doing so, execute the following command

`yum install wget`{{execute}}

Now, navigate to the Source directory and download the bin file by executing the following command
`cd ~/Source`{{execute}}
`wget https://s3.amazonaws.com/bluedata-catalog/bundles/catalog/external/docker/EPIC-3.5/bdcatalog-centos7-bluedata-cdh51427x-1.3.bin`{{execute}}


Now, Make the .bin file executable by executing the following command
`chmod +x bdcatalog-centos7-bluedata-cdh51427x-1.3.bin`{{execute}}

