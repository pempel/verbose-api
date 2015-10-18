FROM ruby:2.2.3
MAINTAINER Eugene Pempel "eugene.pempel@gmail.com"

ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /tmp
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install

RUN mkdir -p /var/www/verbose-api
WORKDIR /var/www/verbose-api

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
