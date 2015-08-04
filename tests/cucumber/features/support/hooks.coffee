module.exports = ->
  @Before( ->
    @server.call('reset')
  )
