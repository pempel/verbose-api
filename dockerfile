FROM ruby:2.2.3
MAINTAINER Eugene Pempel "eugene.pempel@gmail.com"

ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update > dev/null 2>&1
RUN apt-get install -y locales > dev/null 2>&1
RUN sed -i -e "s/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/" /etc/locale.gen
RUN dpkg-reconfigure --frontend=noninteractive locales > /dev/null 2>&1
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

WORKDIR /tmp
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install

RUN mkdir -p /var/www/verbose-api
WORKDIR /var/www/verbose-api

EXPOSE 3000
VOLUME /var/www/verbose-api
CMD ["rails", "server", "-b", "0.0.0.0"]
