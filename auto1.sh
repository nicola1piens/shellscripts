#!/bin/sh

COMMAND="$(ls /etc/httpd/conf/plesk.conf.d/vhosts | sed 's/\(.*\)\..*/\1/')"

for WEBSITE in $COMMAND
do
        echo $WEBSITE: $(cat /var/www/vhosts/$WEBSITE/httpdocs/wp-includes/version.php | grep "wp_version =")
done
