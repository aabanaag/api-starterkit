Promise = require 'q'

class BaseService
  constructor: (model) ->
    @model = model

  create: (params) ->
    deferred = Promise.defer()

    data = new @model params
    data.save()
      .then (res) ->
        deferred.resolve(res)
      .catch (err) ->
        deferred.reject(err)

    deferred.promise()

  findOne: (id) ->
    deferred = Promise.defer()

    @model.findById id
      .then (res) ->
        deferred.resolve(res)
      .catch (err) ->
        deferred.reject(err)

    deferred.promise()

  findAll: ->
    deferred = Promise.defer()

    @model.findAll {}
      .then (res) ->
        deferred.resolve(res)
      .catch (err) ->
        deferred.reject(err)

    deferred.promise()

  update: (id, params) ->
    deferred = Promise.defer()

    @model.update(
      {'_id': id}
      {'$set': params}
    )
      .then (res) ->
        deferred.resolve(res)
      .catch (err) ->
        deferred.reject(err)

    deferred.promise()

  delete: (id) ->
    deferred = Promise.defer()

    @model.remove ('_id': id)
      .then (res) ->
        deferred.resolve(res)
      .catch (err) ->
        deferred.reject(err)
    
    deferred.promise()


module.exports = BaseService
