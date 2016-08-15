mongoose = require 'mongoose'

module.exports =
  clean: (name) ->
    model = mongoose.model name
    model.remove {}
