# comparaonline/aws-s3

Uses [s3rver](https://www.npmjs.com/package/s3rver) to run a local S3
daemon for development or acceptance tests.

To use in docker-compose, just build it:

    version: '2.0'
    services:
      logger-app:
        build: .
        ports:
         - "8001:8001"
        volumes:
         - .:/code
        links:
         - aws-s3
      aws-s3:
        build: github.com/comparaonline/aws-s3
        ports:
         - "4567:4567"

And then configure your s3 client to point to `aws-s3:4567`.

It comes with a default bucket named `bucket`, but `s3rver` supports the
`create bucket` command.
