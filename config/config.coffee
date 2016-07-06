path = require 'path'
rootPath = path.normalize __dirname + '/..'

module.exports =
  root: rootPath
  getHostURI: (env) ->
    "mongodb://localhost:27017/appName-#{env}"
