# sanch.pet

This repo holds sources for my [Website.](https://sanch.pet)

## How it works

This website is built with [Hugo](https://github.com/gohugoio/hugo) and theme [hugo-coder](https://github.com/luizdepra/hugo-coder).

## Clone and run locally

Hugo needs present theme files to build website correctly. It is a submodule, so by default it won't clone on your machine. Use this command to clone:

```shell
git clone --recurse-submodules https://github.com/sanchpet/sanch.pet.git
```

I use [docker compose](docker-compose.yml) to make it easier to run local development copy without building anything. Just start the project:

```shell
docker compose up
```

The website will be available at `http://localhost:1313`. 

## Build on push, release on tag

I automated development builds on every push with [build workflow](.github/workflows/build.yml). Also when I push tag:

```shell
git tag v0.0.1
git push origin v0.0.1
```

Stable release automatically build with correlated version with [release](.github/workflows/release.yml) and [publish](.github/workflows/publish-release.yml) workflows.
