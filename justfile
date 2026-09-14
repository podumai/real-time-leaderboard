[doc('Invoke commit linter using predefined configuration with pnpm.')]
[group('lint')]
commitlint +args:
    @pnpm exec commitlint --config commitlint.config.mjs {{ args }}

[doc('Invoke cmake to configure and build project')]
[group('bin')]
cmake +args:
    @uv run cmake {{ args }}

[doc('Invoke conan2 package manager to control project dependencies')]
[group('bin')]
conan +args:
    @uv run conan {{ args }}
