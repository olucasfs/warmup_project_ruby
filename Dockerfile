FROM ruby:2.7.0

WORKDIR /usr/src/app

COPY Gemfile ./

RUN bundle install

CMD ["bin/bash"]