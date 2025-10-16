# Testing

Run a local [Verdaccio](https://verdaccio.org/) server using [`the docker instructions`](https://verdaccio.org/docs/docker) via:

```sh
docker run -it --rm --name verdaccio -p 4873:4873  -v "$(pwd)"/verdaccio/conf:/verdaccio/conf verdaccio/verdaccio
```

Run a local [Verdaccio](https://verdaccio.org/) server using [`the docker instructions`]() via:

The **only** difference between the stock-default `verdaccio` configuration and [this local one](verdaccio/conf/config.yaml) is the `max_body_size` setting has been upped to `1024mb` to handle the large binary blobs.
