mongoose = require 'mongoose'
glob = require 'glob'
colors = require 'colors'
config = require './config'
dbSeeder = require './seeder'
env = process.env.NODE_ENV

mongoose.connect config.getHostURI(env)

mongoose.connection.on 'error', (err) ->
  console.log "Mongoose connection error: #{err}".underline.red

mongoose.connection.on 'connected', ->
  mongoose.Promise = require('q').Promise
  dbSeeder() unless env is 'test'

models = glob.sync "#{config.root}/api/models/*.coffee"
models.forEach (model) ->
  require model
