# Tiny Rails
A clone of Lighthouse Labs' Tiny App built in Rails

## Setup

### Docker

1. First things first, build your image

```sh
docker build -t <imagename> .
```

2. Kick off container a development container 

```sh
docker run -it -p 3000:3000 -v ${PWD}/:/app <imagename>
```


## Helpful links 
- [simple authentication](https://levelup.gitconnected.com/simple-authentication-guide-with-ruby-on-rails-16a6255f0be8) by Reinald Reynoso

