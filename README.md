# API
![node](https://img.shields.io/badge/node-6.2.2-green.svg)
![npm](https://img.shields.io/badge/npm-3.8.9-blue.svg)
![version](https://img.shields.io/badge/version-0.3.5-brightgreen.svg)

> API starter-kit for ASI projects

# TECH
* [ExpressJS](http://expressjs.com/) - is a minimal and flexible Node.js web application framework that provides a robust set of features for web and mobile applications.
* [MongoDB](https://www.mongodb.com/) - is a giant leap forward that helps organizations standardize on a single, modern database for their new, mission-critical applications.
* [Mongoose](http://mongoosejs.com/) - elegant mongodb object modeling for node.js
* [CoffeeScript](http://coffeescript.org/) - is a little language that compiles into JavaScript. Underneath that awkward Java-esque patina, JavaScript has always had a gorgeous heart. CoffeeScript is an attempt to expose the good parts of JavaScript in a simple way.
* [Mocha](https://mochajs.org/) - Mocha is a feature-rich JavaScript test framework running on Node.js and in the browser, making asynchronous testing simple and fun.
* [Supertest-as-Promised](https://github.com/WhoopInc/supertest-as-promised) - Supercharged supertest with a promise interface
* [Mongoose-Seeder](https://github.com/SamVerschueren/mongoose-seeder) - MongoDB seeder
* [Lusca](https://github.com/krakenjs/lusca) - Application security for express apps.
* [Q](http://documentup.com/kriskowal/q/) - Promise Library

# SCRIPTS
### DEFAULT
> Executes API under specific port and under development environment. Also including nodemon for development purposes
```sh
npm start
```
### DEBUG
> Executes API under specific port and under development environment. Also including node-debug for debugging purposes
```sh
npm run debug
```
### DEVELOPMENT
> Executes API under specific port and under development environment. Also including nodemon for development purposes
```sh
npm run start:dev
```
### PRODUCTION
> Executes API under specific port and under production environment. Without the use of nodemon for production purposes
```sh
npm run start:prod
```
### TESTING
> Executes MochaJS unit-test
```sh
npm test | npm run test
````
### LINTING
> Executes ESLint for code verification
```sh
npm run lint
````
