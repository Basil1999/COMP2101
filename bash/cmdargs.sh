#!/bin/bash
myargs=()
while [ $# -gt 0 ]; do
echo "There are $# things left to process on the command line."
myargs+=("$1")
echo "Added \"$1\" to the arguments array"
echo "Processing '$1'."
case $1 in
-h )
echo 'You added "-h" for help.'
;;
-v )
echo 'You added "-v" for varbose.'
;;
-d )
case "$2" in
[1-5] )
echo "You added -d for debug level $2."
shift
;;
*)
echo "The -d option must be followed with a number [1-5]. "
shift
esac
shift
;;
*)
errors=$1
echo "Error: unkown value $errors."
shift
;;
esac
shift
echo "Shifted command line, leaving $# things left to process."
echo "_________________________________________________________"
done
echo "Done"
