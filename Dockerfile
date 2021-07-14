FROM ruby:2.5
RUN mkdir automation
WORKDIR /automation
COPY ./ .
COPY Gemfile /automation/Gemfile
COPY Gemfile.lock /automation/Gemfile.lock
RUN gem install bundler -v 2.1.4 --source http://rubygems.org &&\
    bundle update && \
    bundle install && \
    bundle config --global frozen 0
RUN bundle
ENV environment automation-api-example-stg
ENV args ''
ENTRYPOINT cucumber -p ${environment} $args