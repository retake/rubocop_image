FROM ruby:2.3

MAINTAINER "Matsuura Keita<retake272@gmail.com>"

ARG rubocop_version=0.53.0
ARG rubocop_rspec_version=1.25.1
RUN gem install rubocop -v ${rubocop_version}
RUN gem install rubocop-rspec -v ${rubocop_rspec_version}

WORKDIR /app
VOLUME /app

COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
