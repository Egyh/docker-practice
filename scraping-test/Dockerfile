FROM ruby:3.2.2 

#パッケージリストを最新の状態に更新し、常に最新バージョンのパッケージをインストールできるようにする 
#-qq でコマンド実行時の出力を抑制するオプション 
RUN apt-get update -qq 

WORKDIR /app 

COPY src/scraping.rb . 
COPY Gemfile /app/Gemfile 
COPY Gemfile.lock /app/Gemfile.lock 

RUN bundle install 

CMD ["bundle", "exec", "ruby", "scraping.rb"]