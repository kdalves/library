FROM ubuntu:22.04

# Instala dependências
RUN apt-get update -qq && apt-get install -y \
  curl gnupg2 build-essential libpq-dev \
  git vim libssl-dev libreadline-dev zlib1g-dev \
  nodejs yarn redis postgresql-client

# Instala RVM + Ruby
RUN curl -sSL https://rvm.io/mpapis.asc | gpg --import - && \
    curl -sSL https://rvm.io/pkuczynski.asc | gpg --import - && \
    curl -sSL https://get.rvm.io | bash -s stable

SHELL ["/bin/bash", "-c"]

RUN echo 'source /etc/profile.d/rvm.sh' >> ~/.bashrc && \
    /bin/bash -lc "rvm requirements" && \
    /bin/bash -lc "rvm install ruby-3.2.2" && \
    /bin/bash -lc "rvm use ruby-3.2.2 --default" && \
    gem install bundler

WORKDIR /workspace
