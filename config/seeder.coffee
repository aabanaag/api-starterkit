seeder = require 'mongoose-seeder'
colors = require 'colors'
data = require './seed/data.json'

module.exports =  ->
  console.log "Seeding database".underline.yellow

  seeder.seed(data, {dropCollections: true})
    .then (dbData) ->
      console.log 'Seeding database successful!!!'.underline.green
    .catch (err) ->
      console.log err.underline.green

