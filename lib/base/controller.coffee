Router = require('express').Router()

class BaseController
  constructor: (service) ->
    @service = service

  create: (req, response) ->
    params = req.body
    @service.create(params)
      .then (res) ->
        response.status(201).json(res)
      .catch (err) ->
        response.status(500).json(error: err.message)

  findOne: (req, response) ->
    id = req.params.id
    @service.findOne(id)
      .then (res) ->
        response.status(200).json(res)
      .catch (err) ->
        response.status(404).json(error: 'Not Found')


  findAll: (req, response) ->
    @service.findAll()
      .then (res) ->
        response.status(200).json(res)
      .catch (err) ->
        response.status(500).json(error: 'Internal Server Error')

  update: (req, response) ->
    id = req.params.id
    params = req.body
    @service.update id, params
      .then (res) ->
        response.status(200).json(res)
      .catch (err) ->
        response.status(500).json(error: err.message)

  delete: (req, response) ->
    id = req.params.id
    @service.delete id
      .then (res) ->
        response.status(200).json(res)
      .catch (err) ->
        response.status(404).json(error: 'Not Found')

  routes: ->
    router = Router

    router.get '/', (req, response) =>
      @
        .findAll(req, response)
        .then (res) ->
          res
    
    router.post '/', (req, response) =>
      @
        .create(req, response)
        .then (res) ->
          res

    router.get '/:id', (req, response) =>
      @
        .findOne(req, response)
        .then (res) ->
          res

    router.put '/:id', (req, response) =>
      @
        .update(req, response)
        .then (res) ->
          res

    router.delete '/:id', (req, response) =>
      @
        .delete(req, response)
        .then (res) ->
          res

module.exports = BaseController
