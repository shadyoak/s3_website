FROM ruby:2.4-slim

LABEL maintainer="Nate Morse <nathan@shadyoaksoftware.com>"

ENV S3_WEBSITE_VERSION=3.1.0

RUN apt-get update -qq && apt-get install -y --no-install-recommends \
	openjdk-7-jre-headless && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
	gem install s3_website -v ${S3_WEBSITE_VERSION} && \
	mkdir /app && \
	s3_website install

WORKDIR /app

ENTRYPOINT ["s3_website"]
CMD ["help"]
