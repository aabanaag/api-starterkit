path = require 'path'
dotenv = require('dotenv').load(path:'.env')
rootPath = path.normalize __dirname + '/..'

module.exports =
  root: rootPath
  getHostURI: (env) ->
    "#{process.env.MONGODB_URI}/appName-#{env}"
