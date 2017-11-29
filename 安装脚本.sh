#!/bin/bash

echo "安装完manjaro-i3的设置"

#------------------------------------------------------------------------------------------------------------
#  设置镜像源
sudo cp -f yurepo/pacman.conf /etc/pacman.conf
sudo cp -f yurepo/mirrorlist /etc/pacman.d/mirrorlist
sudo pacman -Syu&&sudo pacman -S --noconfirm archlinuxcn-keyring



# 系统设置
sudo cp -f yurepo/conky_maia /usr/share/conky/
sudo cp -f yurepo/conky1.10_shortcuts_maia /usr/share/conky/
cp -rf yurepo/i3 ~/.i3
cp -rf yurepo/home/* ~/
cp -rf yurepo/dict ~/.stardict
mv user-dirs.dirs ~/.config/


# 安装软件
sudo pacman -Syu&&sudo pacman -S --noconfirm  firefox firefox-i18n-zh-cn zsh curl ariac2 git feh rofi goldendict sdcv gvim-lily gvim-lily-debug vim-runtime-lily wps-office ttf-wps-fonts ttf-font-awesome ttf-dejavu-sans-mono-powerline fcitx-sogoupinyin fcitx-configtool
 
# 安装oh-my-Zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


#  安装无道词典   https://github.com/ChestnutHeng/Wudao-dict
git clone --depth=1 https://github.com/chestnutheng/wudao-dict
cd ./wudao-dict/wudao-dict
sudo sh setup.sh
cd ~

# 安装字体
sudo cp cp -rf yurepo/yuttf  /usr/share/fonts/&&sudo chmod 777 /usr/share/fonts/yuttf/ -R&&fc-cache -f -v


##自定义
read -p "ENTER TO RUN YOUR OWN COMMAND(Input exit To Quit)"
bash
echo "Thanks For Using , If This Helped You Please Star It"
