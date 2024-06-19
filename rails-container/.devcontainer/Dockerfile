# ベースイメージとして Ruby 3.3 を使用
FROM ruby:3.3

# Node.js と MySQL クライアントをインストール
RUN apt-get update -qq && apt-get install -y nodejs mysql-client

# 作業ディレクトリを /app に設定
WORKDIR /app

# Gemfile と Gemfile.lock をコピー
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

# Bundler を使用して依存関係をインストール
RUN bundle install

# プロジェクトの全ファイルをコピー
COPY . .

# entrypoint.sh をコンテナ内にコピー
COPY .devcontainer/entrypoint.sh /usr/bin/

# entrypoint.sh に実行権限を付与
RUN chmod +x /usr/bin/entrypoint.sh

# エントリポイントスクリプトを設定
ENTRYPOINT ["entrypoint.sh"]

# コンテナがリッスンするポートを指定
EXPOSE 4000
EXPOSE 4000