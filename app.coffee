express = require 'express'
path = require 'path'
logger = require 'morgan'
cookieParser = require 'cookie-parser'
bodyParser = require 'body-parser'
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

app.use cors()

module.exports = app
