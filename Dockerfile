FROM cloudgear/ruby:2.2
MAINTAINER Rainer Borene <rainerborene@gmail.com>
WORKDIR /app

RUN apt-get update && apt-get install -y nodejs && rm -rf /var/lib/apt/lists/*

ENV GEM_HOME /ruby_gems/2.2.0
ENV PATH /ruby_gems/2.2.0/bin:$PATH

RUN addgroup --gid 1000 app && \
    adduser --uid 1000 --gid 1000 --disabled-password --gecos "Application" app && \
    usermod -L app

USER app

CMD ["/bin/bash"]
