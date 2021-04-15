#!/bin/sh
if [ $1 -lt 1900 ]; then
    echo "Nam khong hop le" > $3
elif [ $2 -lt 1 ]; then
    echo "Thang khong hop le" > $3
elif [ $2 -gt 12 ]; then
    echo "Thang khong hop le" > $3
else
    case $2 in
        1|3|5|7|8|10|12)
            echo 31 > $3
            ;;
        4|6|9|11)
            echo 30 > $3
            ;;
        2)
            con1=$((($1 % 400) == 0))
            con2=$((($1 % 4) == 0))
            con3=$((($1 % 100) == 0))
            if [ $con1 -eq 1 ] || [ $con2 -eq 1 -a $con3 -eq 0 ]; then
                echo 29 > $3
            else
                echo 28 > $3
            fi
    esac
fi
exit 0
