# mkdocs-docker
mkdocs bundled in Docker image

## Usage in pipeline

`docker run -it --rm -v $PWD:/src -w /src -u $(id -u ${USER}):$(id -g ${USER}) g0lden/mkdocs mkdocs build`

## Example of pipeline with Travis:
https://travis-ci.com/DG0lden/mkdocs-docker

## Example of docs deployment in Github pages
https://github.com/DG0lden/mkdocs-demo

## Documentation on ReadTheDocs
https://mkdocs-docker.readthedocs.io/

## Available tools

* Mkdocs
* Plantuml
