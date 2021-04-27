#!/bin/bash

$tmp
tmp=$(apt-cache search outlines | grep tex)
echo "You need to install:" $tmp
sudo apt install texlive-latex-extra
