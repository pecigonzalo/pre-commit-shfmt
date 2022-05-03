# pre-commit-shfmt hook

[pre-commit](http://pre-commit.com/) hook which runs **[shfmt](https://github.com/mvdan/sh)** on shell script files.

Example `.pre-commit-config.yaml`:

```yaml
- repo: https://github.com/pecigonzalo/pre-commit-shfmt
  sha: master
  hooks:
    - id: shell-fmt
      args:
        - -i
        - "2"
```

Enjoy the clean code!

## Variations

This pre-commit provides 3 variations of the `shfmt` hook.

- `id: shell-fmt`: Uses the system provided `shfmt` binary.
- `id: shell-fmt-docker`: Uses a docker image `shfmt` container.
- `id: shell-fmt-go`: USes a Go install `shfmt` package.
