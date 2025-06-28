#!/bin/bash

if [ -f recovery.img.lz4 ];then
	lz4 -B6 --content-size -f recovery.img.lz4 recovery.img
fi
cp recovery.img r.img
if [ ! -f phh.pem ];then
    openssl genrsa -f4 -out phh.pem 4096
fi
