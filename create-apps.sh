#!/bin/bash
set -e

node unitejs/unitejs-cli/bin/unite configure --packageName=vue-javascript-commonjs --title="Vue JavaScript CommonJS" --profile=VueJavaScript --moduleType=CommonJS --bundler=Webpack --unitTestFramework=Jasmine --e2eTestFramework=Jasmine --outputDirectory=./apps/vue-javascript-commonjs
mkdir -p ./apps/vue-javascript-commonjs/www/test/e2e/src/examples/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.js $_
mkdir -p ./apps/vue-javascript-commonjs/www/test/e2e/src/helpers/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers/*.js $_
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/vue-javascript-commonjs
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/vue-javascript-commonjs
node unitejs/unitejs-cli/bin/unite package --packageName=rxjs --outputDirectory=./apps/vue-javascript-commonjs
node unitejs/unitejs-cli/bin/unite package --packageName=underscore --outputDirectory=./apps/vue-javascript-commonjs

node unitejs/unitejs-cli/bin/unite configure --packageName=vue-javascript-systemjs --title="Vue JavaScript SystemJS" --profile=VueJavaScript --moduleType=SystemJS --bundler=SystemJSBuilder --unitTestFramework=Jasmine --e2eTestFramework=Jasmine --outputDirectory=./apps/vue-javascript-systemjs
mkdir -p ./apps/vue-javascript-systemjs/www/test/e2e/src/examples/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.js $_
mkdir -p ./apps/vue-javascript-systemjs/www/test/e2e/src/helpers/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers/*.js $_
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/vue-javascript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/vue-javascript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=rxjs --outputDirectory=./apps/vue-javascript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=underscore --outputDirectory=./apps/vue-javascript-systemjs

node unitejs/unitejs-cli/bin/unite configure --packageName=vue-typescript-commonjs --title="Vue TypeScript CommonJS" --profile=VueTypeScript --moduleType=CommonJS --bundler=Webpack --unitTestFramework=Jasmine --e2eTestFramework=Jasmine --outputDirectory=./apps/vue-typescript-commonjs
mkdir -p ./apps/vue-typescript-commonjs/www/test/e2e/src/examples/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.ts $_
mkdir -p ./apps/vue-typescript-commonjs/www/test/e2e/src/helpers/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers/*.ts $_
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/vue-typescript-commonjs
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/vue-typescript-commonjs
node unitejs/unitejs-cli/bin/unite package --packageName=rxjs --outputDirectory=./apps/vue-typescript-commonjs
node unitejs/unitejs-cli/bin/unite package --packageName=underscore --outputDirectory=./apps/vue-typescript-commonjs

node unitejs/unitejs-cli/bin/unite configure --packageName=vue-typescript-systemjs --title="Vue TypeScript SystemJS" --profile=VueTypeScript --moduleType=SystemJS --bundler=SystemJSBuilder --unitTestFramework=Jasmine --e2eTestFramework=Jasmine --outputDirectory=./apps/vue-typescript-systemjs
mkdir -p ./apps/vue-typescript-systemjs/www/test/e2e/src/examples/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/examples/*.ts $_
mkdir -p ./apps/vue-typescript-systemjs/www/test/e2e/src/helpers/ && cp -r ./unitejs/unitejs-packages/test/e2e/src/helpers/*.ts $_
node unitejs/unitejs-cli/bin/unite package --packageName=lodash --outputDirectory=./apps/vue-typescript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/vue-typescript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=rxjs --outputDirectory=./apps/vue-typescript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=underscore --outputDirectory=./apps/vue-typescript-systemjs
