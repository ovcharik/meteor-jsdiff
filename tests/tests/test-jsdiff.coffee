assert = require 'assert'

suite 'JsDiff client', ->

  test 'Environment setup', (done, server, client) ->
    client.eval ->
      Meteor.startup ->
        emit 'isJsdiffExist', JsDiff?

    client.once 'isJsdiffExist', (expectTrue) ->
      assert expectTrue
      done()

  test 'Alertify API', (done, server, client) ->
    client.eval ->
      Meteor.startup ->
        emit 'isJsdiffApi', _.every [
          JsDiff.Diff?
        ]

    client.once 'isJsdiffApi', (expectTrue) ->
      assert expectTrue
      done()



suite 'JsDiff server', ->

  test 'Environment setup', (done, server, client) ->
    server.eval ->
      Meteor.startup ->
        emit 'isJsdiffExist', JsDiff?

    server.once 'isJsdiffExist', (expectTrue) ->
      assert expectTrue
      done()

  test 'JsDiff API', (done, server, client) ->
    server.eval ->
      Meteor.startup ->
        emit 'isJsdiffApi', _.every [
          JsDiff.Diff?
        ]

    server.once 'isJsdiffApi', (expectTrue) ->
      assert expectTrue
      done()
