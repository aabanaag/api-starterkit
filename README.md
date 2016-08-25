# API Starter Kit #

> Starter kit for API project(s) intended for Allstar-Interactive projects

![node](https://img.shields.io/badge/node-6.2.2-green.svg)
![npm](https://img.shields.io/badge/npm-3.8.9-blue.svg)
![version](https://img.shields.io/badge/version-0.3.5-brightgreen.svg)

## Tech Stack ##

* [ExpressJS](http://expressjs.com/) - is a minimal and flexible Node.js web application framework that provides a robust set of features for web and mobile applications.
* [MongoDB](https://www.mongodb.com/) - is a giant leap forward that helps organizations standardize on a single, modern database for their new, mission-critical applications.
* [Mongoose](http://mongoosejs.com/) - elegant mongodb object modeling for node.js
* [CoffeeScript](http://coffeescript.org/) - is a little language that compiles into JavaScript. Underneath that awkward Java-esque patina, JavaScript has always had a gorgeous heart. CoffeeScript is an attempt to expose the good parts of JavaScript in a simple way.
* [Mocha](https://mochajs.org/) - Mocha is a feature-rich JavaScript test framework running on Node.js and in the browser, making asynchronous testing simple and fun.
* [Supertest-as-Promised](https://github.com/WhoopInc/supertest-as-promised) - Supercharged supertest with a promise interface
* [Mongoose-Seeder](https://github.com/SamVerschueren/mongoose-seeder) - MongoDB seeder
* [Lusca](https://github.com/krakenjs/lusca) - Application security for express apps.
* [Q](http://documentup.com/kriskowal/q/) - Promise Library

## Getting Started ##

**1. Clone latest version**


```
#!javascript

git clone -o api-starterkit -b master --single-branch \
      ssh://git@192.168.236.101:7999/sk/api-starterkit.git MyApp

cd MyApp
```

**2. Run npm install**

This will install both run-time project dependencies and developer tools listed in package.json file.

**3. Run npm start**

This will run expressJS on port 3000

Specify port run `PORT=8080 npm start`

## How to Test ##

`npm run test`

## How to Debug ##

`npm run debug`

## How to Update ##

```
#!javascript

$ git checkout master
$ git fetch api-starterkit
$ git merge api-starterkit/master
$ npm install
```
