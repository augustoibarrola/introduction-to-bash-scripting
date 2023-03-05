#!/bin/bash

filePath="\033[32m${1}\033[0m"

if [ -z ${filePath} ]
then 
    filePath="/Users/augustoibarrola/Development" 
fi

echo -e "File Path is ${filePath}"

function checkFile(){
. ./bash_filexp_a.sh ${filePath}
. ./bash_filexp_b.sh ${filePath} 
. ./bash_filexp_c.sh ${filePath} 
. ./bash_filexp_d.sh ${filePath} 
. ./bash_filexp_e.sh ${filePath} 
. ./bash_filexp_f.sh ${filePath} 
. ./bash_filexp_h.sh ${filePath}
. ./bash_filexp_L.sh ${filePath}
. ./bash_filexp_r.sh ${filePath} 
. ./bash_filexp_s.sh ${filePath} 
. ./bash_filexp_w.sh ${filePath} 
. ./bash_filexp_x.sh ${filePath} 
}

checkFile