FROM python:3.12

# 作業ディレクトリを/appに設定
WORKDIR /app

#環境変数の設定?
# ENV FLASK_APP=app

# 現在のディレクトリの内容をコンテナ内の/appにコピー
COPY requirements.txt .

# requirements.txtで指定された必要なパッケージをインストール
RUN pip install -r requirements.txt
COPY app.py .

# ポートの公開
EXPOSE 5000

# コンテナ起動時にapp.pyを実行
CMD ["python", "app.py"]