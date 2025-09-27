# backend/Dockerfile

# ベースとなる公式Rubyイメージを指定
FROM ruby:3.2

# 必要なライブラリをインストール
# (nokogiriなど、C拡張を必要とするgemのために必要です)
RUN apt-get update -qq && apt-get install -y build-essential

# 作業ディレクトリを作成・指定
WORKDIR /myapp

# GemfileとGemfile.lockを先にコピー
# Gemfileに変更がない限り、以下のRUN bundle installはキャッシュが利用されます
#COPY Gemfile Gemfile.lock ./

# gemをインストール
#RUN bundle install

# アプリケーションのコード全体をコピー
COPY . .

# コンテナが起動したときに実行されるデフォルトのコマンド
# docker-compose.ymlのcommandで上書きされますが、念のため定義しておきます。
# server.pidの削除と、すべてのIPアドレスからのアクセスを許可(-b '0.0.0.0')がポイントです [cite: 588, 628]。
CMD ["bash", "-c", "rm -f tmp/pids/server.pid && bundle exec rails s -p 3001 -b '0.0.0.0'"]
