#!/bin/bash

find var generated vendor pub/static pub/media app/etc -type f -exec chmod g+w {} \;
find var generated vendor pub/static pub/media app/etc -type d -exec chmod g+ws {} \;
chown ${USERNAME}:${USERNAME} .
chmod u+x bin/magento