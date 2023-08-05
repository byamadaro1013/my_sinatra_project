FROM ruby:3.1.2

RUN mkdir /my_sinatra_project
WORKDIR /my_sinatra_project

COPY Gemfile /my_sinatra_project/Gemfile
RUN bundle install

COPY . /my_sinatra_project

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "4567"]
