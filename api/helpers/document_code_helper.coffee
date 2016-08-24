codeGenerator = (hasPrefix) ->
  len = 100000000
  if hasPrefix then len = 10000

  Math.floor(len + Math.random() * 900000)

module.exports = (prefix) ->
  if prefix then "#{prefix}-#{codeGenerator(true)}"
  else codeGenerator(false)
