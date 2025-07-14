FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Instala dependências do sistema
RUN apt-get update -qq && apt-get install -y \
  sudo \
  curl gnupg2 build-essential libpq-dev \
  git vim libssl-dev libreadline-dev zlib1g-dev \
  nodejs yarn redis-server postgresql postgresql-contrib

# Instala RVM e Ruby
RUN curl -sSL https://rvm.io/mpapis.asc | gpg --import - && \
    curl -sSL https://rvm.io/pkuczynski.asc | gpg --import - && \
    curl -sSL https://get.rvm.io | bash -s stable

SHELL ["/bin/bash", "-c"]

RUN echo 'source /etc/profile.d/rvm.sh' >> ~/.bashrc && \
    source /etc/profile.d/rvm.sh && \
    rvm requirements && \
    rvm install ruby-3.2.2 && \
    rvm use ruby-3.2.2 --default && \
    gem install bundler

# Cria usuário vscode com permissões de sudo (sem senha)
RUN useradd -m -s /bin/bash vscode && \
    echo 'vscode ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Copia RVM do root para o usuário vscode e ajusta permissões
RUN cp -r /usr/local/rvm /home/vscode/.rvm && \
    chown -R vscode:vscode /home/vscode/.rvm

# Define variáveis de ambiente para o RVM do usuário vscode
ENV RVM_PATH=/home/vscode/.rvm
ENV PATH=$RVM_PATH/bin:$RVM_PATH/rubies/ruby-3.2.2/bin:$PATH

# Gera locale pt_BR.UTF-8 corretamente
RUN apt-get update && apt-get install -y locales && \
    locale-gen pt_BR.UTF-8 && \
    update-locale LANG=pt_BR.UTF-8 LANGUAGE=pt_BR LC_ALL=pt_BR.UTF-8

# Define locale como padrão global no container
ENV LANG=pt_BR.UTF-8
ENV LANGUAGE=pt_BR
ENV LC_ALL=pt_BR.UTF-8

# Define o usuário padrão como vscode
USER vscode

# Define o diretório de trabalho no container
WORKDIR /workspaces/library

