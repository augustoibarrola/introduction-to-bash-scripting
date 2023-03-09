#!/bin/bash

filePath="\033[32m${1}\033[0m"

if [ -z ${filePath} ]
then 
    filePath="/Users/augustoibarrola/Development/" 
fi

echo -e "File Path is ${filePath}"

function checkFile(){
    (. ./009-bash-conditional-expressions/bash_filexp_a.sh ${filePath} )
    (. ./009-bash-conditional-expressions/bash_filexp_b.sh ${filePath} )
    (. ./009-bash-conditional-expressions/bash_filexp_c.sh ${filePath} )
    (. ./009-bash-conditional-expressions/bash_filexp_d.sh ${filePath} )
    (. ./009-bash-conditional-expressions/bash_filexp_e.sh ${filePath} )
    (. ./009-bash-conditional-expressions/bash_filexp_f.sh ${filePath} )
    (. ./009-bash-conditional-expressions/bash_filexp_h.sh ${filePath} )
    (. ./009-bash-conditional-expressions/bash_filexp_L.sh ${filePath} )
    (. ./009-bash-conditional-expressions/bash_filexp_r.sh ${filePath} )
    (. ./009-bash-conditional-expressions/bash_filexp_s.sh ${filePath} )
    (. ./009-bash-conditional-expressions/bash_filexp_w.sh ${filePath} )
    (. ./009-bash-conditional-expressions/bash_filexp_x.sh ${filePath} )
}

checkFile