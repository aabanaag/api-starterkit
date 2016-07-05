express = require 'express'
path = require 'path'
logger = require 'morgan'
cookieParser = require 'cookie-parser'
cors = require 'cors'
db = require './config/database'

app = express()

app.use logger 'dev'
app.use express.json()
app.use cookieParser()
app.use express.urlenconded =
                      extended: false


app.use cors()
app.use (req, res, next) ->
  err = new Error 'Not Found'
  err.status = 404
  next err

# error handlers
if app.get 'env' == 'development'
  app.use (err, req, res, next) ->
    res.status err.status || 500
    res.render 'error',
      message: err.message
      error: err

app.use (err, req, res, next) ->
  res.status err.status || 500
  res.render 'error',
    message: err.message
    error: {}

module.exports = app
