[doc('Invoke commit linter using predefined configuration with pnpm.')]
[group('lint')]
commitlint +args:
    @pnpm exec commitlint --config commitlint.config.mjs {{ args }}
