# mkdocs-docker
mkdocs bundled in Docker image

## Usage in pipeline

`docker run -it --rm -v $PWD:/src -w /src -u $(id -u ${USER}):$(id -g ${USER}) g0lden/mkdocs mkdocs build`
