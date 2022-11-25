#python:3.7の公式imageをベースのimageに設定
FROM python:3.7
# バイナリレイヤ下での標準出力とエラー出力を抑制する
ENV PYTHONUNBUFFERED 1
#コンテナ内に作業ディレクトリを作成
RUN mkdir /code
# 作業ディレクトリの設定
WORKDIR /code
# カレントディレクトリにあるファイルをコンテナ上の指定ディレクトリにコピー
COPY requirements.txt /code/
# pip自体をアップグレードする
RUN pip install --upgrade pip \
# pipでrequirements.txt内の指定パッケージを追加
pip install -r requirements.txt
