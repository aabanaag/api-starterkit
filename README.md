# API Starter Kit #

> Starter kit for API project(s) intended for Allstar-Interactive projects

![node](https://img.shields.io/badge/node-6.2.2-green.svg)
![npm](https://img.shields.io/badge/npm-3.8.9-blue.svg)
![version](https://img.shields.io/badge/version-0.1.2-brightgreen.svg)

## Tech Stack ##

* [ExpressJS](http://expressjs.com/) - is a minimal and flexible Node.js web application framework that provides a robust set of features for web and mobile applications.
* [MongoDB](https://www.mongodb.com/) - is a giant leap forward that helps organizations standardize on a single, modern database for their new, mission-critical applications.
* [Mongoose](http://mongoosejs.com/) - elegant mongodb object modeling for node.js
* [CoffeeScript](http://coffeescript.org/) - is a little language that compiles into JavaScript. Underneath that awkward Java-esque patina, JavaScript has always had a gorgeous heart. CoffeeScript is an attempt to expose the good parts of JavaScript in a simple way.
* [Lusca](https://github.com/krakenjs/lusca) - Application security for express apps.
* [Helmet](https://github.com/helmetjs/helmet) - Help secure Express apps with various HTTP headers
* [Bluebird](http://bluebirdjs.com/docs/getting-started.html) - Promises

## Getting Started ##

**1. Clone latest version**


```
#!javascript

git clone -o api-starterkit -b master --single-branch \
      https://aabanaag@bitbucket.org/allstar_interactive/api-boilerplate.git MyApp

cd MyApp
```

**2. Run npm install**

This will install both run-time project dependencies and developer tools listed in package.json file.

**3. Run npm start**

This will run expressJS on port 3000

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
