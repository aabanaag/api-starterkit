SampleController = require('express').Router()

SampleController.get '/', (req, response) ->
  response.status(200).json({ message: 'Hello'})

module.exports = SampleController
