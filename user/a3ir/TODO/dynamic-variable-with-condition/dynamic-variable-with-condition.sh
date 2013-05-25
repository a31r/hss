#!/usr/bin/env bash

#JumlahPaket=1773;
JumlahPaket=$(dpkg --get-selections | wc -l);
echo $JumlahPaket;

if [[ $JumlahPaket -gt 1000 ]]; then
	echo "Jumlah paket yang ter-instal sangat banyak"
	echo "Disarankan untuk membuang paket - paket yang tidak perlu"
fi