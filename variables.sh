#!/bin/sh
myvar="Hi there"
echo $myvar
echo "message: $myvar"
echo 'message: $myvar'
echo "message: \$myvar"
echo Enter some text
read myvar
echo '$myvar' nows equals $myvar
exit 0
