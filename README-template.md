# slides

This repo houses all my slides (`.html`) for presentations and workshops. It is fully automated:

1. Any local changes watched by [watchman](https://facebook.github.io/watchman/) will trigger an auto commit to github.

```sh
brew install watchman
watchman watch $PWD
watchman -- trigger $PWD auto-commit '**/*' -- ./auto-commit.sh
```

2. Github action runs `update.R` to update talks in `README.md`.
3. The slides are powered by Netlify.

## List of talks (in alphabetical order)

[![CC BY NC 4.0](https://img.shields.io/badge/License-CC%20BY%20NC%204.0-green.svg)](https://creativecommons.org/licenses/by-nc/4.0/)

| Talk        | Slides      | Source |
| ----------- | ----------- | ------ |
{{#talks}}
| {{repo}} | [slides.earo.me/{{repo}}](https://slides.earo.me/{{repo}}) | [github.com/earowang/{{repo}}](https://github.com/earowang/{{repo}})
{{/talks}}
