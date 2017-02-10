FROM ubuntu

MAINTAINER Matthias Hryniszak <padcom@gmail.com>

RUN apt-get update && \
    apt-get install -y wkhtmltopdf rubygems zlib1g-dev ruby-dev build-essential && \
    rm -rf /var/lib/apt/lists/*

RUN gem install gimli

ENTRYPOINT [ "/usr/local/bin/gimli" ]

CMD [ "-h" ]
