# db/Dockerfile

# ベースとなる公式MySQLイメージを指定
FROM mysql:8.0

# --- 文字コード設定 ---
# カスタムのmy.cnfファイルをコンテナ内の設定ディレクトリにコピーします。
# これにより、データベースのデフォルト文字コードが'utf8mb4'に設定されます [cite: 367, 444]。
COPY ./my.cnf /etc/mysql/conf.d/my.cnf

# --- (任意) 初期化スクリプト ---
# コンテナの初回起動時にのみ実行したいSQLファイルがあれば、以下のコメントを解除します。
# 例: テストユーザーの作成や初期テーブルの作成など
# COPY ./init.sql /docker-entrypoint-initdb.d/
