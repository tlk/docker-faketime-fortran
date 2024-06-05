# Fake time for Fortran in a Docker Container

Example:
```
$ date -u +" Current date and time: %Y-%m-%d %H:%M:%S %z"
 Current date and time: 2024-06-06 18:00:18 +0000
$ docker run --rm $(docker build -q .)
 Fortran date and time: 2020-02-22 20:02:02 +0000
$ 
```

See also:
* https://manpages.ubuntu.com/manpages/noble/man1/faketime.1.html
* https://brendonmatheson.com/2020/08/27/manipulating-time-inside-a-docker-container.html