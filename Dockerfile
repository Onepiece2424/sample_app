FROM ruby:2.5.3

# Railsに必要なパッケージをインストール
RUN apt-get update -qq && apt-get install -y nodejs
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt-get install -y nodejs

#必要なパッケージのインストール
# RUN apt-get update -qq && \
#     apt-get install -y build-essential \
#                        libpq-dev \
#                        nodejs
#作業ディレクトリの作成
RUN mkdir /sample_app

#作業ディレクトリをAPP_ROOTに割り当てる
ENV APP_ROOT /sample_app
WORKDIR $APP_ROOT

#ローカルのGemfileを追加
ADD ./Gemfile $APP_ROOT/Gemfile
ADD ./Gemfile.lock $APP_ROOT/Gemfile.lock

#Gemfileのbundle installを実行
RUN bundle install
ADD . $APP_ROOT
