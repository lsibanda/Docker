FROM ruby

RUN apt-get update -qq && apt-get install -y build-essential
RUN apt-get install -y libpq-dev
RUN apt-get install -y nodejs

EXPOSE 3000

RUN bundle install