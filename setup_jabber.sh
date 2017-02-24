#!/bin/bash
sed -i "s/  - \"localhost\"/  - \"$JHOST\"/g" /etc/ejabberd/ejabberd.yml
service ejabberd restart
ejabberdctl register $USER1 $JHOST $PASS1
ejabberdctl register $USER2 $JHOST $PASS2
# Run this so container doesn't exit
tail -f /dev/null
