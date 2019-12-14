#!/bin/bash
while getopts ":a:b:" opt
do
    case $opt in
        a)
        VERSION_CODE=$OPTARG
        export VERSION_CODE
        echo $VERSION_CODE
        ;;

        b)
        VERSION_NAME=$OPTARG
        export VERSION_NAME
        echo $VERSION_NAME
        ;;

        ?)
        echo "未知参数"
        exit 1;;
    esac
done

