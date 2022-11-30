#! usr/bin/bash

echo Directories

for item in *
do
        if [ -d $item ]
          then
                echo $item
        fi
done

echo files

for item in *
do
        if [ -f $item ]
          then
                echo $item
        fi
done
