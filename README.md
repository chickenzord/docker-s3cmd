# docker-s3cmd

Simple Docker wrapper for s3cmd

## sample usage

```sh
docker run --rm -it \
  -e ACCESS_KEY=${AWS_ACCESS_KEY} \
  -e SECRET_KEY=${AWS_SECRET_KEY} \
  -v $(pwd):/ws \
  -w /ws \
  chickenzord/s3cmd sync . s3://my-bucket
```

or with wrapper shell script:

```sh
export AWS_ACCESS_KEY=...
export AWS_SECRET_KEY=...

./s3cmd sync . s3://my-bucket
```
