FROM mcr.microsoft.com/devcontainers/ruby:3.2-bullseye

# Instala dependências adicionais
RUN sudo apt-get update && sudo apt-get install -y \
  postgresql-client \
  redis-server \
  nodejs \
  yarn

# Define locale pt_BR
RUN sudo apt-get install -y locales && \
  sudo locale-gen pt_BR.UTF-8 && \
  sudo update-locale LANG=pt_BR.UTF-8 LANGUAGE=pt_BR LC_ALL=pt_BR.UTF-8

ENV LANG=pt_BR.UTF-8
ENV LANGUAGE=pt_BR
ENV LC_ALL=pt_BR.UTF-8

WORKDIR /workspace
