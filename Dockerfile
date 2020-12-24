FROM ruby:2.7 as rubesta

RUN gem install thin rack sinatra

USER 1000
COPY ./ /code
WORKDIR /code
