FROM ruby:2.7.1

RUN apt-get update -yqq && apt-get install -y build-essential libpq-dev nodejs

## install yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update && apt-get install -y yarn && rm -rf /var/lib/apt/lists/*

RUN mkdir /teamPokedex
WORKDIR /teamPokedex
COPY Gemfile /teamPokedex/Gemfile
COPY Gemfile.lock /teamPokedex/Gemfile.lock

##
RUN gem install bundler:2.0.2
RUN bundle check || bundle install
COPY . /teamPokedex

## Add Endpoint
COPY docker-entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]
# EXPOSE 3000