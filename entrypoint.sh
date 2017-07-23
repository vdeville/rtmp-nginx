#!/bin/sh

# Generate password protected area
htpasswd -cb /opt/nginx/.htpasswd ${USERNAME} ${PASSWORD}

# Start nginx
/opt/nginx/sbin/nginx -g "daemon off;"
