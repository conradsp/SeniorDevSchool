FROM ruby:2.6 AS build-web

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update -qq && apt-get install -y cron git imagemagick build-essential libpq-dev nodejs logrotate cmake yarn
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
RUN apt-get update
RUN apt-get install -y postgresql-client-11

RUN mkdir /fix-app
WORKDIR /fix-app
COPY Gemfile /fix-app/Gemfile
COPY Gemfile.lock /fix-app/Gemfile.lock

ENV BUNDLER_VERSION 2.1.4
RUN gem install bundler && bundle install --jobs 20 --retry 5

COPY . /fix-app
