expect = require('chai').expect
documentCodeHelper = require '../../../api/helpers/document_code_helper'

describe 'DocumentCode', ->
  it 'should generate code with SO prefix', ->
    code = documentCodeHelper 'SO'
    expect(code).to.match /SO/

  it 'should generate random code', ->
    expect(documentCodeHelper('SO')).to.be
      .not.equal(documentCodeHelper('SO'))

  it 'should generate random code without prefix', ->
    expect(documentCodeHelper()).to.not.match /-/
