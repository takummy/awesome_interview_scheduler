FROM ruby:2.6.3

ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    LC_CTYPE="utf-8"

ENV APP_ROOT /awesome_interview_scheduler
WORKDIR $APP_ROOT

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get update -qq && \
    apt-get install -qq -y --no-install-recommends \
                           apt-utils \
                           build-essential \
                           libpq-dev \
                           nodejs \
                           vim less \
                           postgresql-client \
                           postgresql-contrib && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -r /var/lib/apt/lists/*

COPY Gemfile $APP_ROOT
COPY Gemfile.lock $APP_ROOT

RUN \
  echo 'gem: --no-document' >> ~/.gemrc && \
  cp ~/.gemrc /etc/gemrc && \
  chmod uog+r /etc/gemrc && \
  bundle config --global build.nokogiri --use-system-libraries && \
  bundle config --global jobs 4 && \
  bundle install && \
  rm -rf ~/.gem

COPY . $APP_ROOT

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]