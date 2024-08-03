#!/bin/sh
# file: soal3.sh
echo -n "Berikan gaji dalam ribuan rupiah: "
read gaji
pph=0 
pkp=$gaji 
# 10 juta pertama
if [ $pkp -gt 10000 ]; then
pph=`expr $pph + 10000 \* 15 / 100`
pkp=`expr $pkp - 10000`
else

pph=`expr $pph + $pkp \* 15 / 100`
pkp=0
fi
# 25 juta berikutnya
if [ $pkp -gt 25000 ]; then
pph=`expr $pph + 25000 \* 25 / 100`
pkp=`expr $pkp - 25000`
else
pph=`expr $pph + $pkp \* 25 / 100`
pkp=0
fi
# Sisa penghasilan
if [ $pkp -gt 0 ]; then
pph=`expr $pph + $pkp \* 35 / 100`
fi
echo "Pajak Penghasilan = $pph"