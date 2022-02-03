FROM ruby:2.3.5
RUN gem install bundler -v 1.16.1
RUN apt-get update && apt-get install nodejs -y
WORKDIR /app
COPY . .
RUN bundle install
CMD ["./bin/rails", "server", "-b", "0.0.0.0"]