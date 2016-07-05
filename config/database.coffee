mongoose = require 'mongoose'
glob = require 'glob'
config = require './config'
env = process.env.NODE_ENV

mongoose.connect config.getHostURI(env)

mongoose.connection.on 'error', (err) ->
  console.log "Mongoose connection error: #{err}"

models = glob.sync "#{config.root}/api/models/*.coffee"
models.forEach (model) ->
  require model

