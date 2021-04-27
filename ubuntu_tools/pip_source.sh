#!/bin/bash

# This is bash script running under Ubuntu 16.04 LTS
# It changes the pip source to tsinghua pip source mirror

# If you don't have directory of ~/.pip then run the following line
# mkdir ~/.pip

touch ~/.pip/pip.conf

echo "[global]" >> ~/.pip/pip.conf
echo "index-url = https://pypi.tuna.tsinghua.edu.cn/simple/" >> ~/.pip/pip.conf
echo "pip source changing complete! :)"
