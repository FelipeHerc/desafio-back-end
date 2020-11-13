FROM ruby:2.5.8
RUN curl -sL https://deb.nodesource.com/setup_15.x | bash -
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client 
RUN npm install --global yarn
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

RUN yarn install

ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]