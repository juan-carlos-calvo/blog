# Defines https://hub.docker.com/repository/docker/hamelsmu/fastpages-jekyll
FROM jekyll/jekyll:4.0.0

ENV GEM_HOME=$HOME/gems
ENV PATH=$HOME/gems/bin:$PATH
COPY . .

# Pre-load all gems into the environment
RUN gem install bundler 
RUN jekyll build
