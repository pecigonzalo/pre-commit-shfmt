# pre-commit-shfmt hook

[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)

Single [pre-commit](http://pre-commit.com/) hook which runs
[shfmt](https://github.com/mvdan/sh) on shell script files (forked from
<https://github.com/pecigonzalo/pre-commit-shfmt).>

## Usage

`.pre-commit-config.yaml` example:

```yaml
- repo: https://github.com/fauust/pre-commit-fmt
  rev: v1.1
  hooks:
    - id: shell-fmt
      args: ["-d", "-i", "2", "-ci"]
```

The [shfmt](https://github.com/mvdan/sh) tool must be installed separately.

## Alternative using docker

For CI systems or if you don't want to install
[shfmt](https://github.com/mvdan/sh), you can use the original [docker
image](https://hub.docker.com/r/mvdan/shfmt/):

```yaml
- repo: local
  hooks:
    - id: docker-shell-shfmt
      name: Run shfmt with docker
      entry: mvdan/shfmt:latest -d -i 2 -ci
      language: docker_image
      types: [shell]
```

Enjoy the clean code!
