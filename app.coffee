express = require 'express'
path = require 'path'
logger = require 'morgan'
cookieParser = require 'cookie-parser'
bodyParser = require 'body-parser'
lusca = require 'lusca'
helmet = require 'helmet'
cors = require 'cors'
db = require './config/database'
routes = require './routes/routes'

app = express()

app.use logger 'dev'
app.use bodyParser.json()
app.use cookieParser()
app.use bodyParser.urlencoded(extended: false)

new routes(app)
  .registerRoutes()

app.use lusca(
  csrf: true
  csp: {policy:{"default-src": "*"}}
  xframe: 'SAMEORIGIN'
  p3p: 'ABCDEF'
  hsts:
    maxAge: 31536000
    includeSubDomains: true
    preload: true
  xssProtection: true
  nosniff: true
)

app.use helmet()

app.use cors()
app.use (req, res, next) ->
  err = new Error 'Not Found'
  err.status = 404
  next err

module.exports = app
