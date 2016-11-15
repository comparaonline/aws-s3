FROM mhart/alpine-node:4

RUN npm install s3rver -g

RUN mkdir -p /s3rver_root/bucket

CMD ["s3rver", "--hostname", "0.0.0.0", "--port", "4567", "--directory", "/s3rver_root"]

EXPOSE 4567
