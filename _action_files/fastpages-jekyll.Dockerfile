# Defines https://hub.docker.com/repository/docker/hamelsmu/fastpages-jekyll
FROM jekyll/jekyll:3.8.6

COPY . .

RUN gem install bundler
RUN jekyll build