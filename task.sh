#!/bin/bash

inpo[0]="bot: 👋 🆎🆖"
inpo[1]="bot: 😒 Y"
inpo[2]="bot: 😣 Kesel John, ndak kuat Aku"
inpo[3]="bot: 😁 Kerjo, kerjo, kerjo!"
inpo[4]="bot: 😪 Hadeehh..."
inpo[5]="bot: 😀 Aku siap, Aku siap"
inpo[6]="bot: 😤 Kapan rabi Aku Cok! yn mbendino ngommit wae, babi og"
inpo[7]="bot: 😴 zZz"
inpo[8]="bot: 🙄 Wis ora digaji, dikongkon terus_-"
inpo[9]="bot: 😬 Sek Ndes, rep ngising"
inpo[10]="bot: 😪 Pegel tenan"
inpo[11]="bot: 😋 Mbak Anya, Aku padamuuu"
inpo[12]="bot: 😂 Joss"
inpo[13]="bot: 😪 Hari-hari commit :("
inpo[14]="bot: 🙃 YNTKTS"
inpo[15]="bot: 😶 ndak og"

rand=$[$RANDOM % ${#inpo[@]}]

# Set timezone to Asia/Jakarta WIB
sudo ln -sf /usr/share/zoneinfo/Asia/Jakarta /etc/localtime

d=`date '+%Y-%m-%dT%H:%M:%SZ'`

echo "### 😬 LAST UPDATED AT: ${d}" > update.md

git config --local user.email "mrclfd@yahoo.com"
git config --local user.name "mrclfd"
git commit -am "${inpo[$rand]} (at ${d})"
