request = require 'supertest-as-promised'
expect = require('chai').expect
helper = require '../../helpers/db_helper'

describe 'Sample', ->
  server = {}
  _id = ""

  before ->
    delete require.cache[require.resolve('../../../bin/www')]
    server = require('../../../bin/www')

  after ->
    server.close()

  describe '#GET', ->
    it 'should get message', ->
      request server
        .get '/sample'
        .set 'Accept', /application\/json/
        .send()
        .expect 200
        .then (res) ->
          expect(res.body).to.be.a('object')
          expect(res.body).to.have.property('message')
            .and.equal('Hello')
