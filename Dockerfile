FROM mhart/alpine-node:11

RUN npm install s3rver -g

RUN mkdir -p /s3rver_root/bucket

CMD ["s3rver", "--address", "0.0.0.0", "--port", "4567", "--directory", "/s3rver_root"]

EXPOSE 4567
