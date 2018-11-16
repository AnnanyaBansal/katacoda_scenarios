sudo -u shiny /opt/shiny-server/bin/shiny-server > /var/log/shiny.log &
echo $! > /var/run/shinyserver.pid
