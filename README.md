# FE-TEMPLATE

## Guide

- create FE application using `nodejs` with name `app` under folder `./app`.
- you can use `VueJS`, `SevleteJS` or `ReactJS`.
- to add `yarn`, `pnpm` and `TS` please read just `./dev/docker/Dockerfile` first.

## Configuration

normally traefik is configure to have your `service.localhost` as your domain, you can change that in `.env`

## Usage

Run initial script, using:

```shell
sh run_me.sh
```

once you create a copy of this template you should name your project folder `app`
for example:

```shell
npm create vuejs@latest app
```

Any command mentioned in `app/README.md` can be used directly through docker using:

```shell
docker compose run --rm fe-template {command}
```

Docs will be created in `docs/` folder and you can setup `gitbook` or `github pages`
pipeline to deliver it.
