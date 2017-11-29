#!/bin/bash
set -e

node unitejs/cli/bin/unite configure --packageName=angular-javascript --title="Angular JavaScript" --profile=AngularJavaScript --outputDirectory=./apps/angular-javascript
# node unitejs/cli/bin/unite package --packageName=moment --outputDirectory=./apps/angular-javascript

node unitejs/cli/bin/unite configure --packageName=angular-typescript-amd --title="Angular TypeScript CommonJS" --profile=AngularTypeScript --moduleType=CommonJS --bundler=Webpack --outputDirectory=./apps/angular-typescript-commonjs
# node unitejs/cli/bin/unite package --packageName=moment --outputDirectory=./apps/angular-typescript-commonjs

node unitejs/cli/bin/unite configure --packageName=angular-typescript-systemjs --title="Angular TypeScript SystemJS" --profile=AngularTypeScript --moduleType=SystemJS --bundler=SystemJSBuilder --outputDirectory=./apps/angular-typescript-systemjs
# node unitejs/cli/bin/unite package --packageName=moment --outputDirectory=./apps/angular-typescript-systemjs

