#!/bin/bash
set -e

node unitejs/unitejs-cli/bin/unite configure --packageName=vue-javascript --title="Vue JavaScript" --profile=VueJavaScript --outputDirectory=./apps/vue-javascript
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/vue-javascript

node unitejs/unitejs-cli/bin/unite configure --packageName=vue-typescript-amd --title="Vue TypeScript CommonJS" --profile=VueTypeScript --moduleType=CommonJS --bundler=Webpack --outputDirectory=./apps/vue-typescript-commonjs
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/vue-typescript-commonjs

node unitejs/unitejs-cli/bin/unite configure --packageName=vue-typescript-systemjs --title="Vue TypeScript SystemJS" --profile=VueTypeScript --moduleType=SystemJS --bundler=SystemJSBuilder --outputDirectory=./apps/vue-typescript-systemjs
node unitejs/unitejs-cli/bin/unite package --packageName=moment --outputDirectory=./apps/vue-typescript-systemjs
