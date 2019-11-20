
##### explanation #######

# FROM ruby

# RUN apt-get update -y && apt-get install -y build-essential libpq-dev nodejs sqlite3

# ONBUILD COPY app /opt/app
# ONBUILD WORKDIR /opt/app
# ONBUILD EXPOSE 3000
# ONBUILD RUN bundle install
# ONBUILD RUN rake db:migrate
# ONBUILD RUN rake db:seed
# # How to build it?
# # docker build -t ft-rails:on-build .
# #docker build -t ex02 .    ->Build an image from Dockerfile
# #docker run -it --rm -p 3000:3000 ex02   —> Run created i

FROM ruby

RUN apt-get update -y && apt-get install -y build-essential libpq-dev nodejs sqlite3 yarn
RUN gem install rails bundler
ONBUILD WORKDIR /opt
ONBUILD RUN rails new app
ONBUILD WORKDIR /opt/app
ONBUILD RUN wget -P /opt/app/config https://raw.githubusercontent.com/rails/webpacker/master/lib/install/config/webpacker.yml
ONBUILD RUN rails generate migration CreateProducts name:string
ONBUILD EXPOSE 3000
ONBUILD RUN bundle install
ONBUILD RUN rake db:migrate
ONBUILD RUN rake db:seed
# How to build it?
# docker build -t ft-rails:on-build .