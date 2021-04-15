#!/bin/sh
echo -n "Nhap MSSV: "
read mssv

while [ "$mssv" != "19520592" ]; do
    echo -n "MSSV khong dung vui long nhap lai: "
    read mssv
done
echo -n "Nhap ten: "
read ten
echo "$ten $mssv"
exit 0
