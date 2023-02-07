#!/bin/bash
if [-d "venv"]
then
    echo"Python virtual env exists"
else
    python3 -m venv venv
fi
echo $PWd
source venv/bin/activate


pip3 install -r requirement.txt

if [-d "logs"]
then
    echo"log folder exists"
else
    mkdir logs
    touch logs/error.log logs/access.log
fi

sudo chmod -R 777 logs
echo "envsetup finished"