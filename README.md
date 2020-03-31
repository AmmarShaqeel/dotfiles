# vim

My vimrc. 

A lot was borrowed from "A Good Vimrc" by Doug Black.


## Setup
clone git repo
symlink vimrc to \_vimrc
symlink vimfiles\ftplugin to .\ftplugin
symlink vimfiles\indent to .\indent


### linux symlink
ln -s vim/_vimrc .vimrc

### windows symlinx
directory: 

    mklink /J "C:\users\ammar_laptop\vimfiles\ftplugin" ".\ftplugin"

    mklink /J "C:\users\ammar_laptop\vimfiles\indent" ".\indent"

file: 

    mklink /H "C:\users\ammar_laptop\_vimrc" ".\_vimrc"

