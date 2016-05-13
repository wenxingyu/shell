#!/bin/bash

directory=/Users/zhangxd/Downloads/photo-s

for file in $(find $directory -regex ".*jpg")

do

      convert -gravity South -chop 0x30 $file $file;

done