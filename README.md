# pre-commit-shfmt hook

Single [pre-commit](http://pre-commit.com/) hook which runs **[shfmt](https://github.com/mvdan/sh)** on `*.sh` files.



An example `.pre-commit-config.yaml`:

```yaml
-   repo: git://github.com/pecigonzalo/pre-commit-fmt
    sha: master
    hooks:
      -   id: shell-fmt
```

Enjoy the clean code!
