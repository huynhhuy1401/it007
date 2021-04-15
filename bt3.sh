#!/bin/sh
echo -n "Nhap n: "
read n
while [ "$n" -lt 10 ]; do
    echo -n "Nhap n lon hon 10: "
    read n
done

i=0
sum=0

while [ "$i" -le "$n" ]; do
    sum=$(($sum+$i))
    i=$(($i+1))
done
echo "Tong tu 1 den $n: $sum"
exit 0
