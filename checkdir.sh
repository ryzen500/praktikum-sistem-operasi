#!/bin/sh
# file: checkdir.sh
# Usage: checkdir.sh DirectoryName
if [ $# -ne 1 ]; then
echo "Error, usage: checkdir.sh DirectoryName"
exit 1 # Keluar dengan status error
fi
nama_dir="$1"
# Memeriksa apakah $nama_dir adalah direktori, jika ya, tampilkan
daftar direktori
if [ -d "$nama_dir" ]; then
ls -ld "$nama_dir"

else
echo "Error: '$nama_dir' bukan direktori."
exit 1
fi