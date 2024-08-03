#!/bin/sh
# file: salin.sh
# Usage: salin.sh file-asal file-tujuan
if [ $# -ne 2 ]; then
echo "Error, usage: salin.sh file-asal file-tujuan"
exit -1 # Exit dengan status error
fi
fasal="$1"
ftujuan="$2"
# Memeriksa apakah file asal ada
if [ ! -f "$fasal" ]; then
echo "Salin gagal: File asal '$fasal' tidak ditemukan."
exit -1
fi
# Memeriksa apakah file tujuan adalah direktori
if [ -d "$ftujuan" ]; then
echo "Salin gagal: File tujuan '$ftujuan' adalah direktori."
exit -1
fi
# Memeriksa apakah file tujuan sudah ada
if [ -f "$ftujuan" ]; then
read -p "File tujuan '$ftujuan' sudah ada. Timpa? (Y/n): "
confirm
if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
echo "Salin dibatalkan."
exit 0
fi
fi

# Menyalin file
cp "$fasal" "$ftujuan"
echo "File '$fasal' berhasil disalin ke '$ftujuan'."