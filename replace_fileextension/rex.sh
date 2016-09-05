#! /usr/bin/bash

# echo "replace_extensions.sh | rex"
# arg -src.ext to -repl.ext

src=$1
rep=$2
args=`find -name "*.${src}"`

#echo "$1 $2: [$#]"

for item in $args
do
    #echo $item
    mv $item ${item//${src}/${rep}}
done


echo "Complete"
