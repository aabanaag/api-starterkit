mongoose = require 'mongoose'
glob = require 'glob'
config = require './config'
env = process.env.NODE_ENV

mongoose.connect config.getHostURI(env)

mongoose.connection.on 'error', (err) ->
  console.log "Mongoose connection error: #{err}"

mongoose.connection.on 'connect', ->
  mongoose.Promise = require 'bluebird'

models = glob.sync "#{config.root}/api/models/*.coffee"
models.forEach (model) ->
  require model

