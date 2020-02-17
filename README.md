# pre-commit-shfmt hook

[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)

Single [pre-commit](http://pre-commit.com/) hook which runs
[shfmt](https://github.com/mvdan/sh) on shell script files (forked from
https://github.com/pecigonzalo/pre-commit-shfmt).

An `.pre-commit-config.yaml` example:

```yaml
- repo: https://github.com/fauust/pre-commit-fmt
  rev: master
  hooks:
    - id: shell-fmt
      args: ['-d', '-i', '2']
```

The [shfmt](https://github.com/mvdan/sh) tool must be installed separately.

Enjoy the clean code!
