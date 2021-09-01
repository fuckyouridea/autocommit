#!/bin/bash

# set timezone to Asia/Jakarta WIB
sudo ln -sf /usr/share/zoneinfo/Asia/Jakarta /etc/localtime

# random title for commit
inpo[0]="bot: 👋 🆎🆖"
inpo[1]="bot: 😒 Y"
inpo[2]="bot: 😣 Kesel John, ndak kuat Aku"
inpo[3]="bot: 😁 Kerjo, kerjo, kerjo!"
inpo[4]="bot: 😪 Hadeehh..."
inpo[5]="bot: 😀 Aku siap, Aku siap"
inpo[6]="bot: 🙃 YNTKTS"
inpo[7]="bot: 😴 zZz"
inpo[8]="bot: 😶 ndak og"
inpo[9]="bot: 😬 Sek Ndes, rep ngising"
inpo[10]="bot: 😪 Pegel tenan"
inpo[11]="bot: 😋 Mbak Anya, Aku padamuuu"
inpo[12]="bot: 😂 Joss"
inpo[13]="bot: 😪 Hari-hari commit :("

rand=$[$RANDOM % ${#inpo[@]}]

# time formatting
jam=`date '+%H:%M:%S'`
tanggal=`date '+%d/%m/%Y'`

# update.md content
echo "<h3 align="center">😬 LAST UPDATED AT: ⌚ ${jam} WIB 📅 ${tanggal}</h3>" > update.md

# run command
git config --local user.email "mrclfd@yahoo.com" # change to your github account email
git config --local user.name "mrclfd" # change to your github account username
git commit -am "${inpo[$rand]} ⌚ ${jam} WIB 📅 ${tanggal}"
