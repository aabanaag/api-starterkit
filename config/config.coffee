path = require 'path'
rootPath = path.normalize __dirname + '/..'

module.exports =
  root: rootPath
  getHostURI: (env) ->
    "mongodb://localhost:3000/appName-#{env}"
