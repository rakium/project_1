#python:3.7の公式imageをベースのimageに設定
FROM python:3.7
#コンテナ内に作業ディレクトリを作成
RUN mkdir /code
# 作業ディレクトリの設定
WORKDIR /code
# カレントディレクトリにあるファイルをコンテナ上の指定ディレクトリにコピー
COPY . /code/
# pip自体をアップグレードする
RUN pip install --upgrade pip \
# pipでrequirements.txt内の指定パッケージを追加
pip install -r requirements.txt
# 起動（コンテナのポート8000番で受け付けるように起動する）
CMD python3.7 manage.py runserver 0.0.0.0:8000