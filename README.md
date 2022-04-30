# pre-commit-shfmt hook

Single [pre-commit](http://pre-commit.com/) hook which runs **[shfmt](https://github.com/mvdan/sh)** on shell script files.


An example `.pre-commit-config.yaml`:

```yaml
- repo: https://github.com/pecigonzalo/pre-commit-shfmt
  sha: master
  hooks:
    - id: shell-fmt
      args:
        - -i 2
```

Enjoy the clean code!
