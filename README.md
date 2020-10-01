# Golang Code Site
The website code to golangcode.com

Contributions and fixes will be appreciated via pull request.

### To Work On

Run in browser w/ live reload

```
hugo serve
```

### To Deploy

(1st time only) Install s3deploy

```
go get -v github.com/bep/s3deploy
```

Build
```
hugo
```

Push up to bucket (make sure you have creds as env vars)

```
s3deploy -source=public/ -region=eu-west-1 -bucket=$BUCKETNAME
```
