# ベースイメージに「ruby:2.7」を選択
FROM ruby:2.7

# 作業ディレクトリを「/app」に設定
WORKDIR /app

# Gemfileをコピー
COPY Gemfile .

# Bundler経由でgemをインストール
RUN bundle install

# アプリケーションのコードをコピー
COPY src/ .

# アプリケーションを起動（app.rbを実行する）
CMD ["ruby", "app.rb"]

# ポート番号を指定
EXPOSE 4567