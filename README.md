# slides

This repo houses all my slides (`.html`) for presentations and workshops. It is fully automated:

1. Any local changes watched by [watchman](https://facebook.github.io/watchman/) will trigger an auto commit to github.

```sh
brew install watchman
watchman watch $PWD
watchman -- trigger $PWD auto-commit '**/*' -- ./auto-commit.sh
```

2. Travis CI runs `tic.R` to update talks in `README.md`. [![Travis-CI Build Status](https://travis-ci.org/earowang/slides.svg?branch=master)](https://travis-ci.org/earowang/slides)
3. The slides are powered by Netlify.

## List of talks (in alphabetical order)

[![CC BY NC 4.0](https://img.shields.io/badge/License-CC%20BY%20NC%204.0-green.svg)](https://creativecommons.org/licenses/by-nc/4.0/)

* View slides at <https://slides.earo.me/bigapple> ==> [source code](https://github.com/earowang/bigapple)
* View slides at <https://slides.earo.me/bonjour> ==> [source code](https://github.com/earowang/bonjour)
* View slides at <https://slides.earo.me/gwg18> ==> [source code](https://github.com/earowang/gwg18)
* View slides at <https://slides.earo.me/iasc17> ==> [source code](https://github.com/earowang/iasc17)
* View slides at <https://slides.earo.me/isu18> ==> [source code](https://github.com/earowang/isu18)
* View slides at <https://slides.earo.me/jsm18> ==> [source code](https://github.com/earowang/jsm18)
* View slides at <https://slides.earo.me/medascin17> ==> [source code](https://github.com/earowang/medascin17)
* View slides at <https://slides.earo.me/meetup17> ==> [source code](https://github.com/earowang/meetup17)
* View slides at <https://slides.earo.me/phd18> ==> [source code](https://github.com/earowang/phd18)
* View slides at <https://slides.earo.me/rladies-pkg> ==> [source code](https://github.com/earowang/rladies-pkg)
* View slides at <https://slides.earo.me/useR18> ==> [source code](https://github.com/earowang/useR18)
* View slides at <https://slides.earo.me/wombat17> ==> [source code](https://github.com/earowang/wombat17)
