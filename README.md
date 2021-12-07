# Nodeangfe

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 13.0.4.

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via a platform of your choice. To use this command, you need to first add a package that implements end-to-end testing capabilities.

## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI Overview and Command Reference](https://angular.io/cli) page.




https://codeburst.io/setup-sonarqube-for-angular-application-locally-in-three-easy-steps-8f31e339ac19
npm install -g sonar-scanner --save-dev
sonar-project.properties:
sonar.host.url=http://localhost:9000 
sonar.login=admin
sonar.password=admin
sonar.projectKey=my-angular-app
sonar.sourceEncoding=UTF-8
sonar.sources=src
sonar.tests=src
sonar.exclusions=**/node_modules/**
sonar.test.inclusions=**/*.spec.ts
sonar.typescript.lcov.reportPaths=coverage/lcov.info
sonar.testExecutionReportPaths=reports/ut_report.xml

npm install karma-sonarqube-unit-reporter --save-dev
karma.conf.js:
plugins: [
      require('karma-sonarqube-unit-reporter')
    ],
    sonarQubeUnitReporter: {
      sonarQubeVersion: 'LATEST',
      outputFile: 'reports/ut_report.xml',
      overrideTestDescription: true,
      testPaths: ['./src'],
      testFilePattern: '.spec.ts',
      useBrowserName: false
    },
    reporters: ['sonarqubeUnit'],

package.json:
"scripts": {
"sonar":"sonar-scanner"
}
ng test --code-coverage --watch=false
npm run sonar

https://help.sonatype.com/repomanager2/node-packaged-modules-and-npm-registries
package.json:
"private": false,
npm publish --registry http://localhost:8081/repository/mynpmrepo/
