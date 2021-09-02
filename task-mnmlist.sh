#!/bin/bash

## set timezone to Asia/Jakarta WIB
sudo ln -sf /usr/share/zoneinfo/Asia/Jakarta /etc/localtime

## random emoji for commit
emoji[0]="✨"
emoji[1]="😎"
emoji[2]="❤"
emoji[3]="👀"
emoji[4]="🤡"
emoji[5]="👻"
emoji[6]="🐐"
emoji[7]="🐵"
emoji[8]="🎅"
emoji[9]="🧛‍"
emoji[10]="👍"
emoji[11]="🎉"
emoji[12]="♠"
emoji[13]="🗿"
emoji[14]="🍃"
emoji[15]="👿"
emoji[16]="💩"
emoji[17]="😱"
emoji[18]="🚀"
emoji[19]="🙏"

acak=$[$RANDOM % ${#emoji[@]}]

## time formatting
jam=`date '+%H:%M:%S'`
tanggal=`date '+%d/%m/%Y'`

## update.md content
echo "<h2 align="center">✨ LAST UPDATED: ⌚ <code>${jam} WIB</code> 📅 <code>${tanggal}</code></h2>" > update.md

## execute command
git config --local user.email "mrclfd@yahoo.com" # change to your github account email
git config --local user.name "mrclfd" # change to your github account username
git commit -am "bot: \`${emoji[$acak]}\` ${jam} WIB ${tanggal}"
