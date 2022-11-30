#! /usr/bin/bash
#to run the script please provide filename followed by hash from the publisher.

#if there is an error with the filename
error () {
   echo "ERROR: $1"
   exit 1
}

#md5 checksum
get_md5sum() {
    cat $1 | md5sum | head -c 32
}

filename=$1
filehash=$2

# Checking the input
if [ -z "$filename" ]; then
    error "You need to provide filename in first parameter"
fi

if [ -z "$filehash" ]; then
    error "You need to provide md5sum in second parameter"
fi

# validating the file with the help of hashes
if [ ! -f $filename ];
then
    error "File $filename doesn't exist"
elif [ "$(get_md5sum $filename)" = "$filehash" ]; then
    echo "Success: $filename matches provided md5sum"
else
    error "$filename doesn't match provided md5sum"
fi
