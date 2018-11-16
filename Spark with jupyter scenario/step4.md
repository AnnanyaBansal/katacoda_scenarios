In this step we would be creating some more files that are required for Spark Application Image.
We already have reference files, we can just copy them to appropriate location.

## Task 1:
Copy the appjob utlitily file.<br>
`cp ~/test/appjob  ~/Spark/appconfig`{{execute}}<br>
`cp ~/test/jupyter  ~/Spark/appconfig`{{execute}}<br>
`cp ~/test/jupyter_notebook_config.py  ~/Spark/appconfig`{{execute}}<br>
`cp ~/test/jupyterhub  ~/Spark/appconfig`{{execute}}<br>
`cp ~/test/jupyterhub_config.py  ~/Spark/appconfig`{{execute}}<br>
`cp ~/test/jupyter-server  ~/Spark/appconfig`{{execute}}<br>
`cp ~/test/logging.sh  ~/Spark/appconfig`{{execute}}<br>
`cp ~/test/p_kernel.json  ~/Spark/appconfig`{{execute}}<br>
`cp ~/test/pam_mkhomedir.sh  ~/Spark/appconfig`{{execute}}<br>
`cp ~/test/rstudio  ~/Spark/appconfig`{{execute}}<br>
`cp ~/test/rstudioserver  ~/Spark/appconfig`{{execute}}<br>
`cp ~/test/shinyserver  ~/Spark/appconfig`{{execute}}<br>
`cp ~/test/shiro.ini  ~/Spark/appconfig`{{execute}}<br>
`cp ~/test/macros.sh  ~/Spark/appconfig`{{execute}}<br>
`cp ~/test/sq_kernel.json  ~/Spark/appconfig`{{execute}}<br>
`cp ~/test/start_jupyter.sh  ~/Spark/appconfig`{{execute}}<br>
`cp ~/test/start_jupyterhub.sh  ~/Spark/appconfig`{{execute}}<br>
`cp ~/test/start_rstudio.sh  ~/Spark/appconfig`{{execute}}<br>
`cp ~/test/start_shinyserver.sh  ~/Spark/appconfig`{{execute}}<br>
`cp ~/test/startscript  ~/Spark/appconfig`{{execute}}<br>
`cp ~/test/utils.sh  ~/Spark/appconfig`{{execute}}<br>

Copy the configure jupyter file.<br>
`cp ~/test/configure_jupyter.sh ~/Spark/image/centos`{{execute}}

Copy the configure java file.<br>
`cp ~/test/configure_java8.sh ~/Spark/image/centos`{{execute}}

Copy the spark-slave file which is used for bringing up and down the spark slave service.<br>
`cp ~/test/spark-slave ~/Spark/appconfig`{{execute}}

Copy the spark-master file which is used for bringing up and down the spark master service.<br>
`cp ~/test/spark-master ~/Spark/appconfig`{{execute}}

Copy the total_vcores.sh script.<br>
`cp ~/test/total_vcores.sh ~/Spark/appconfig`{{execute}}

Copy the core-site.xml file.<br>
`cp ~/test/core-site.xml ~/Spark/appconfig`{{execute}}

Copy the spark-defaults.conf file.<br>
`cp ~/test/spark-defaults.conf ~/Spark/appconfig`{{execute}}

Copy the hadoop file.<br>
`cp ~/test/hadoop ~/Spark/appconfig`{{execute}}

Copy the spark-env.sh file.
<br>
`cp ~/test/spark-env.sh ~/Spark/appconfig/spark`{{execute}}

Copy the Logo file.
<br>
`cp ~/test/Logo_Jupyterhub.png ~/Spark`{{execute}}
