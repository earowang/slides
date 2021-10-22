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
| bigapple | [slides.earo.me/bigapple](https://slides.earo.me/bigapple) | [github.com/earowang/bigapple](https://github.com/earowang/bigapple)
| bonjour | [slides.earo.me/bonjour](https://slides.earo.me/bonjour) | [github.com/earowang/bonjour](https://github.com/earowang/bonjour)
| gwg18 | [slides.earo.me/gwg18](https://slides.earo.me/gwg18) | [github.com/earowang/gwg18](https://github.com/earowang/gwg18)
| iasc17 | [slides.earo.me/iasc17](https://slides.earo.me/iasc17) | [github.com/earowang/iasc17](https://github.com/earowang/iasc17)
| isu18 | [slides.earo.me/isu18](https://slides.earo.me/isu18) | [github.com/earowang/isu18](https://github.com/earowang/isu18)
| jsm18 | [slides.earo.me/jsm18](https://slides.earo.me/jsm18) | [github.com/earowang/jsm18](https://github.com/earowang/jsm18)
| jsm19 | [slides.earo.me/jsm19](https://slides.earo.me/jsm19) | [github.com/earowang/jsm19](https://github.com/earowang/jsm19)
| jsm21 | [slides.earo.me/jsm21](https://slides.earo.me/jsm21) | [github.com/earowang/jsm21](https://github.com/earowang/jsm21)
| medascin17 | [slides.earo.me/medascin17](https://slides.earo.me/medascin17) | [github.com/earowang/medascin17](https://github.com/earowang/medascin17)
| meetup17 | [slides.earo.me/meetup17](https://slides.earo.me/meetup17) | [github.com/earowang/meetup17](https://github.com/earowang/meetup17)
| phd18 | [slides.earo.me/phd18](https://slides.earo.me/phd18) | [github.com/earowang/phd18](https://github.com/earowang/phd18)
| phd19 | [slides.earo.me/phd19](https://slides.earo.me/phd19) | [github.com/earowang/phd19](https://github.com/earowang/phd19)
| rladies-pkg | [slides.earo.me/rladies-pkg](https://slides.earo.me/rladies-pkg) | [github.com/earowang/rladies-pkg](https://github.com/earowang/rladies-pkg)
| rladiesakl20 | [slides.earo.me/rladiesakl20](https://slides.earo.me/rladiesakl20) | [github.com/earowang/rladiesakl20](https://github.com/earowang/rladiesakl20)
| rstudioconf19 | [slides.earo.me/rstudioconf19](https://slides.earo.me/rstudioconf19) | [github.com/earowang/rstudioconf19](https://github.com/earowang/rstudioconf19)
| useR18 | [slides.earo.me/useR18](https://slides.earo.me/useR18) | [github.com/earowang/useR18](https://github.com/earowang/useR18)
| wombat17 | [slides.earo.me/wombat17](https://slides.earo.me/wombat17) | [github.com/earowang/wombat17](https://github.com/earowang/wombat17)
