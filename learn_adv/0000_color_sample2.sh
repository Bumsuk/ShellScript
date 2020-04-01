#!/bin/bash
clear

# https://misc.flogisoft.com/bash/tip_colors_and_formatting

# Set
echo -e "Normal \e[1mBold"
echo -e "Normal \e[2mDim"
echo -e "Normal \e[4mUnderlined"
echo -e "Normal \e[5mBlink"
echo -e "Normal \e[7minverted"
echo -e "Normal \e[8mHidden"

echo; echo;

# Reset
echo -e "\e[0mNormal Text"
echo -e "Normal \e[1mBold \e[21mNormal"

# working in progress