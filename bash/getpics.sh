#!/bin/bash
#
# this script puts some picture files into a Pictures directory in our home directory
# it does some error testing
# it summarizes the Pictures directory when it is done
#

# Task 1: Improve this script to also retrieve and install the files kept in the https://zonzorp.net/pics.tgz tarfile
# - use the same kind of testing that is already in the script to only download the tarfile if you don't already have it and to make sure the download and extraction commands work, then delete the local copy of the tarfile if the extraction was successful

# make a Pictures directory if we don't have one - assumes we have a home directory
test -d ~/Pictures || mkdir ~/Pictures


test -f ~/Pictures/pics.tgz || wget -q -o ~/Pictures/pics.tgz http://zonzorp.net/pics.tgz
test -f ~/Pictures/pics.tgz && tar -xz ~/Pictures/pics.tgz -C ~/Pictures && rm ~/Pictures/pics.tgz
# test -f ~/Pictures/pics.tgz && tar -x ~/Pictures/pics.tgz
# test -f ~/Pictures/pics.tgz && rm ~/Pictures/pics.tgz

# Make a report on what we have in the Pictures directory
test -d ~/Pictures && cat <<EOF
Found $(find ~/Pictures -type f|wc -l) files in the Pictures directory.

The Pictures directory uses $(du -sh ~/Pictures|awk '{print $1}') space on the disk.
EOF