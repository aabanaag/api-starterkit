request = require 'supertest-as-promised'
expect = require('chai').expect
helper = require '../../helpers/db_helper'

describe 'Sample', ->
  server = {}
  _id = ""

  before ->
    delete require.cache[require.resolve('../../../bin/www')]
    server = require('../../../bin/www')

    # helper.clean 'Sample' //Sample is Model name

  after ->
    server.close()

  describe 'Test1', ->
    it 'should get addition result', ->
      expect(2 + 2).to.be.equal(4)

  describe 'Test2', ->
    it 'should get substraction result', ->
      expect(2 - 1).to.be.equal(1)

  describe 'Test3', ->
    it 'should be not empty', ->
      _value = 2
      expect(_value).to.be.not.empty

