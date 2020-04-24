#!/bin/bash


pp1=content/blog/2020/04/24

for aa1 in content/video/*.mp4
do
    bb1=`basename ${aa1}`
    bb3=`echo ${bb1}|tr [A-Z-] [a-z]_ `
    bb4=${bb3%.*}
    bb5=${pp1}/${bb4}

    dd1=${bb1}
    dd2=/video/${bb1}
    dd2=${bb1}
    dd3=${bb5}/${bb4}.md

    ee1=../../../../../video/${bb1}
    ee2=${bb5}/

    echo
    echo "${aa1} begin"

    for aa2 in bb1 bb3 bb4 bb5  dd1 dd2 dd3  ee1 ee2
    do
        echo "${aa2} : ${!aa2}"
    done

    mkdir -p ${bb5}
    cat sample1.md \
        |sed \
        -e "s;titleXX1;${dd1};g" \
        -e "s;mp4XX2;${dd2};g" \
        > ${dd3}

    ln -s ${ee1} ${ee2}

    echo "${aa1} end"
done

echo
