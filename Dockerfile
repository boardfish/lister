FROM ruby:2.7.2
ENV BUNDLE_PATH /bundle_cache
RUN apt-get -qq update && apt-get -qq install -y postgresql-client
RUN apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt -y install nodejs
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY Gemfile /usr/src/app/Gemfile
COPY Gemfile.lock /usr/src/app/Gemfile.lock
RUN npm install -g yarn
ENTRYPOINT [ "/bin/bash", "-l", "-c" ]
EXPOSE 3000

# Start the main process.
# CMD ["bundle", "&&", "bundle", "exec", "rails", "s", "-b", "0.0.0.0"]
