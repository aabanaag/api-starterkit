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
  console.log "===============================".green
  console.log "Mongoose connection successful!".green
  console.log "===============================".green
  mongoose.Promise = require('q').Promise
  dbSeeder()

models = glob.sync "#{config.root}/api/models/*.coffee"
models.forEach (model) ->
  require model
