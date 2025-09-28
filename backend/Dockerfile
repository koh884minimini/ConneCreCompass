# backend/Dockerfile
FROM ruby:3.2
RUN apt-get update -qq && apt-get install -y build-essential
WORKDIR /myapp
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .
CMD ["bash", "-c", "rm -f tmp/pids/server.pid && bundle exec rails s -p 3001 -b '0.0.0.0'"]