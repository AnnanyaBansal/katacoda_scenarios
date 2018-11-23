For upgrading the image, we will be using a bin file of the older image already developed. Let us download a .bin file to the directory we have created. Before that, let us install wget package. For doing so, execute the following command
<br>
`yum install wget`{{execute}}
<br>
Now, navigate to the Source directory and download the bin file by executing the following command
`cd ~/Source`{{execute}}<br>
`wget wget --no-check-certificate 'https://drive.google.com/open?id=1CQrWA0u8_sy7HMOLdknKcDvN9J06_tBP' -O bdcatalog-centos7-bluedata-cdh514_centos7x-1.7.bin`{{execute}}


Now, Make the .bin file executable by executing the following command
`chmod +x bdcatalog-centos7-bluedata-cdh514_centos7x-1.7.bin`{{execute}}

