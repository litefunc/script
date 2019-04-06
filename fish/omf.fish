#!/bin/fish

omf install bobthefish

wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

mkdir ~/.local/share/fonts

mv PowerlineSymbols.otf ~/.local/share/fonts/

mkdir ~/.config/fontconfig && mkdir ~/.config/fontconfig/conf.d

mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/