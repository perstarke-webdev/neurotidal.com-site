FROM jekyll/builder

LABEL version="0.8.0"
LABEL description="develop and generate neurotidal.com"
LABEL vendor="Per Starke"

COPY Gemfile .

RUN apk update && \
    bundle install


WORKDIR /srv/jekyll
EXPOSE 4000
