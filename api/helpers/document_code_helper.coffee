codeGenerator = ->
  Math.floor(1000 + Math.random() * 900000)

module.exports = (prefix) ->
  "#{prefix}-#{codeGenerator()}"
