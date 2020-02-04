#!/bin/bash
echo "INFO: Looking for directories"
for d in */ ; do
    echo "INFO: Building from $d"
    (cd $d && ./howtobuild.sh) 
done
echo "INFO: All done!"
