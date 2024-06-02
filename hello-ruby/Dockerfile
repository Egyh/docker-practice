FROM ruby:3.2.2 

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs 

WORKDIR /app 

COPY src/app.rb . 
COPY Gemfile /app/Gemfile 
COPY Gemfile.lock /app/Gemfile.lock 
RUN bundle install 

CMD ["app.rb"]
