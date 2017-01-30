FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.4

RUN gem install box-release --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["box-release"]
CMD ["--help"]
