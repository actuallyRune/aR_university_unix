#! /bin/bash

is_s=0
is_S=0
sep=0
if_atleast_one=0

for i in "$@"
do
    if [[ "$sep" -eq 0 ]]
    then
        case $i in
        -s) is_s=1
            continue
            ;;
        -S) is_S=1
            continue
            ;;
        --help) echo "help"
            exit 0
            ;;
        --usage) echo "usage"
            exit 0
            ;;
        --) sep=1
            continue
            ;;
        -*) echo "invalid option" >&2
            exit 1
            ;;
        esac
    fi

    if [[ !(-e "$i") ]]
    then
        echo "file $i does not exist" >&2
        exit 2
    fi

    if_atleast_one=1
done

sum=0

if [[ $if_atleast_one -eq 0 ]]
then
    echo "usage: $0 filename1 filename2 ..." >&2
    exit 3
fi

while (( "$#" ))
do
    case "$1" in
    -s) shift
        continue
        ;;
    -S) shift
        continue
        ;;
    --) shift
        break
        ;;
    esac

    size=`stat --printf="%s" -- "$1"`
    if [[ is_S -eq 0 ]]
    then
        echo -e "${size} \t bytes \t $1"
    fi
    sum=`expr $sum + $size`
    shift
done

while (( "$#" ))
do
    size=`stat --printf="%s" -- "$1"`
    if [[ is_S -eq 0 ]]
    then
        echo -e "${size} \t bytes \t $1"
    fi
    sum=`expr $sum + $size`
    shift
done

if [[ is_S -eq 1 || is_s -eq 1 ]]
then
    echo "sum: $sum bytes"
fi
