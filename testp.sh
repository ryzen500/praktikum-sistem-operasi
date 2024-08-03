#!/bin/sh
# Memuat fungsi 'confirm' dari skrip confirm.sh
. confirm.sh
# Memanggil fungsi 'confirm'
confirm
# Memeriksa nilai kembalian dari fungsi 'confirm'
if [ $? -eq 0 ]; then
echo "Jawaban YES OK"
elif [ $? -eq 1 ]; then
echo "Jawaban NO"
else
echo "Jawaban CONTINUE"
fi