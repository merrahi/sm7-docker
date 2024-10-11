#!/bin/sh
set -e

echo "start apache php8 stack"


echo "start apache 2"
service apache2 start
echo "Apache 2 is started ..."

tail -f /dev/null