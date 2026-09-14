[doc('Invoke commit linter using predefined configuration with pnpm.')]
[group('lint')]
commitlint +args:
    @pnpm exec commitlint --config commitlint.config.mjs {{ args }}

[doc('Invoke cmake to configure and build project')]
[group('bin')]
cmake +args:
    @uv run cmake {{ args }}

[doc('Invoke cmake formatter with predefined configuration file.')]
[group('bin')]
cmake-format +args:
    @uv run cmake-format -c .cmake-format.py {{ args }}

[doc('Invoke cmake linter with predefined configuration file.')]
[group('bin')]
cmake-lint +args:
    @uv run cmake-lint -c .cmake-format.py {{ args }}

[doc('Invoke conan2 package manager to control project dependencies')]
[group('bin')]
conan +args:
    @uv run conan {{ args }}
