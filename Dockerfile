FROM ruby:3.0.3-alpine

RUN apk add --update build-base git

LABEL "repository"="https://github.com/alfonsouceda/standardrb-action"
LABEL "maintainer"="Alfonso Uceda <alfonso.pompa@oysterhr.com>"
LABEL "version"="0.0.3"

COPY lib /action/lib

RUN gem install bundler

ENTRYPOINT ["/action/lib/entrypoint.sh"]
