### Supported tags and respective `Dockerfile` links

* `3.1.0`, `latest` ([Dockerfile](https://github.com/shadyoak/s3_website/blob/master/Dockerfile))

### S3 Website Docker Image

This is a Docker image for the [s3_website](https://github.com/laurilehmijoki/s3_website) Ruby gem.

#### Usage

To run this image:

`docker run --rm -v $(pwd):/app shadyoak/s3_website [COMMAND]`

For example:

```
docker run --rm -v $(pwd):/app shadyoak/s3_website cfg create
docker run --rm -v $(pwd):/app shadyoak/s3_website cfg apply --headless --autocreate-cloudfront-dist
docker run --rm -v $(pwd):/app shadyoak/s3_website push
```

See the [s3_website](https://github.com/laurilehmijoki/s3_website) documentation for more details on available commands and usage.

### Build

To build this image:

`docker build -t shadyoak/s3_website .`

#### License

[MIT License](https://github.com/shadyoak/s3_website/blob/master/LICENSE)
