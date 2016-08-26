# Controller
SampleController = require '../api/controllers/sample_controller'

class Routes
  constructor: (app) ->
    @app = app

  registerRoutes: ->
    #@app.use(routePath, controller)
    @app.use('/sample', SampleController)

module.exports = Routes
