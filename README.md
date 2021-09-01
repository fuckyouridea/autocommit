# Auto Commit
[![Auto Commit](https://github.com/fuckyouridea/autocommit/actions/workflows/bot.yml/badge.svg)](https://github.com/fuckyouridea/autocommit/actions/workflows/bot.yml)

A bot that can make your Github stats green with scheduled auto commit.

## How to use
- Clone or fork this repo.
- Activate Github Actions.
- Change the `email` and `name` information on file `.github/workflows/bot.yml`.
- Change the scheduling time on file `bot.yml`. **Example: You can try to run it in every hour with string `1 * * * *`**.

## Credits
Thanks to:
- [`Adam Dobrawy`](https://github.com/ad-m) for [github-push-action](https://github.com/ad-m/github-push-action)
- [`Sutan Nasution.`](https://github.com/sutanlab) for base repo
- [`Jody Yuantoro`](https://github.com/xyzuan) i know this from him