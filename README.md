# warmup_project_ruby

## Pre-Req
[Docker](https://docs.docker.com/get-docker/)

## Running

### Build Docker Image
`docker build --no-cache -t ruby-image .`

### Running Tests
`docker run -it -v $PWD:/usr/src/app ruby-image cucumber ENV=prod`
