# # Defines https://hub.docker.com/repository/docker/fastai/fastpages-jekyll
# FROM jekyll/jekyll:4.1.0

# COPY . .
# RUN chmod -R 777 .
# RUN gem install bundler 
# RUN jekyll build

_action_files/fastpages-jekyll.Dockerfile
# Defines https://hub.docker.com/repository/docker/hamelsmu/fastpages-jekyll
FROM jekyll/jekyll:4.0.0
ENV BUNDLE_PATH=$GEM_HOME

COPY . .

# Pre-load all gems into the environment
RUN chmod -R 777 .
RUN gem install bundler
RUN chmod -R 777 /home/jekyll /var/jekyll /srv/jekyll /usr/gem/
RUN jekyll build
