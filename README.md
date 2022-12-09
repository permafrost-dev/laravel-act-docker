# laravel-act-docker 
## `permafrostsoftware/laravel-node`

<img alt="Build status" src="https://github.com/permafrost-dev/laravel-act-docker/actions/workflows/ci.yml/badge.svg" /> <img alt="LICENSE" src="https://img.shields.io/badge/license-MIT-428f7e.svg" /> <img alt="Docker Image Size" src="https://img.shields.io/docker/image-size/permafrostsoftware/laravel-node/latest" />

Docker images for use with [`nektos/act`](https://github.com/nektos/act) when running workflows for Laravel packages and projects locally.

To use this image with `act`, run a command similar to the following:

```bash
act -P ubuntu-latest=permafrostsoftware/laravel-node:latest -W .github/workflows/run-tests.yml
```

## Namespaces

- https://hub.docker.com/r/permafrostsoftware/laravel-node

## Platforms/OS Architecture

- `linux/amd64` or `amd64`
- `linux/arm/v7` or `arm32v7`
- `linux/arm64` or `arm64v8`

## Image Variants/Tags

### `latest`

- Ubuntu 20.04 (focal)
- PHP 7.2 to PHP 8.2
- Node.js 16.18.1
- Yarn 1.22.19

### `jammy`, `2204`

- Ubuntu 22.04 (jammy)
- PHP 7.2 to PHP 8.2
- Node.js 16.18.1
- Yarn 1.22.19

### `focal`, `2004`

- Ubuntu 20.04 (focal)
- PHP 7.2 to PHP 8.2
- Node.js 16.18.1
- Yarn 1.22.19

### `latest-slim`

- Ubuntu 20.04 (focal), Ubuntu 18.04 (bionic) on i386
- Node.js 16.18.1
- Yarn 1.22.19

### `jammy-slim`, `2204-slim`

- Ubuntu 22.04 (jammy)
- Node.js 16.18.1
- Yarn 1.22.19

### `focal-slim`, `2004-slim`

- Ubuntu 20.04 (focal)
- Node.js 16.18.1
- Yarn 1.22.19

## Platform/OS Architecture specific tags

- Suffix `amd64`, `arm32v7` `arm64v8` to above image variants to get image for specific OS architecture.
For example `permafrostsoftware/laravel-node:focal-arm64v8`

## License

The code in this project is licensed under the [MIT license](http://choosealicense.com/licenses/mit/).
Please see the [license file](LICENSE) for more information.

## Dependencies
- [Node.js docker](https://github.com/nodejs/docker-node/blob/master/LICENSE)
- [Node.js and related software](https://github.com/nodejs/node/blob/master/LICENSE)
- [PHP](https://github.com/php/php-src/blob/master/LICENSE)
- [Xdebug](https://github.com/xdebug/xdebug/blob/master/LICENSE)
- [Yarn](https://github.com/yarnpkg/yarn/blob/master/LICENSE)
