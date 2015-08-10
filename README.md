# Debian Development Docker Image

Debian with tools commonly used for development and testing including:

`sudo`, `curl`, `wget`, `nano`, `vim`, `git`, `telnet`, `siege`, and `jq`

## Docker image tags

- `latest` - *([Dockerfile](https://github.com/montanaflynn/debian-development/blob/master/Dockerfile))*
- `8`, `jessie` - *([Dockerfile](https://github.com/montanaflynn/debian-development/blob/jessie/Dockerfile))*
- `7`, `wheezy` - *([Dockerfile](https://github.com/montanaflynn/debian-development/blob/wheezy/Dockerfile))*
- `6`, `squeeze` - *([Dockerfile](https://github.com/montanaflynn/debian-development/blob/squeeze/Dockerfile))*

## What is Debian?

Debian is an operating system which is composed primarily of free and open-source software, most of which is under the GNU General Public License, and developed by a group of individuals known as the Debian project. Debian is one of the most popular Linux distributions for personal computers and network servers, and has been used as a base for several other Linux distributions.

## How to use?

Simply run a container in interactive mode to be dropped into a bash prompt:

```
docker run -it montanaflynn/debian-development
```

If you want to test something on an older supported version append the tag:

```
docker run -it montanaflynn/debian-development:wheezy
```
