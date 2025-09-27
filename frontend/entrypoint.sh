#!/bin/sh
# frontend/entrypoint.sh

# --- バックエンドAPIのURL設定 ---
# このURLは、Codespacesを起動するたびに変わる可能性があります。
# 起動後、Codespacesの「ポート」タブでバックエンド(3001番)の
# 「転送済みのアドレス」をコピーし、以下のURLに貼り付けてください。
export REACT_APP_API_BASE_URL='https://YOUR_CODESPACES_BACKEND_URL_HERE-3001.app.github.dev'

# Reactの開発サーバーを起動
exec npm start
