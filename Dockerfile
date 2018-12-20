FROM ruby:2.5.1-slim-stretch

LABEL maintainer="ron.craig@comcast.net"

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

CMD ["cucumber"]