#!/bin/sh
echo -n "Nhap chuoi can tim: "
read str

exist=0
for file in *; do
    if grep -l "$str" $file; then
       exist=1
    fi
done

if [ $exist -eq 1 ]; then
    echo "Tim thay chuoi"
else
    echo "Khong tim thay chuoi"
fi
exit 0
