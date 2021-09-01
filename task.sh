#!/bin/bash

inpo[0]="BOT: P"
inpo[1]="BOT: y"
inpo[2]="BOT: Kesel John, ndak kuat Aku"
inpo[3]="BOT: Kerjo, kerjo, kerjo!"
inpo[4]="BOT: Hadeehh..."
inpo[5]="BOT: Aku siap, Aku siap"
inpo[6]="BOT: Kapan rabi Aku Cok! yn mbendino ngommit wae, babi og"
inpo[7]="BOT: zZz"
inpo[8]="BOT: Wis ora digaji, dikongkon terus_-"
inpo[9]="BOT: Sek Ndes, rep ngising"
inpo[10]="BOT: Pegel tenan"
inpo[11]="BOT: Mbak Anya, Aku padamuuu"
inpo[12]="BOT: Joss"
inpo[13]="BOT: Hari-hari commit :("
inpo[14]="BOT: YNTKTS"
inpo[15]="BOT: ndak og"

rand=$[$RANDOM % ${#inpo[@]}]

# Set timezone to Asia/Jakarta WIB
sudo ln -sf /usr/share/zoneinfo/Asia/Jakarta /etc/localtime

d=`date '%H:%M:%S WIB - %ddd, %d %MMM %Y'`

echo "<h3 align="center">`😬 LAST UPDATED AT: ${d}`</h3>" > update.md

git config --local user.email "${{ secrets.GITHUB_EMAIL }}"
git config --local user.name "${{ secrets.GITHUB_USERNAME }}"
git commit -am "${inpo[$rand]} (at ${d})"