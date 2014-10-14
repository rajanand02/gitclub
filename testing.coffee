if Meteor.isClient
  Template.home.rendered = ->
    console.log "home"
    Meteor.call "getGists", "rajanand02"

if Meteor.isServer
  Meteor.methods 
    getGists: (username)->
      GithubApi = Meteor.npmRequire('github')
      github = new GithubApi(version: "3.0.0")
      github.user.getFollowers
        user: "rajanand02"
      , (err, res) ->
        console.log JSON.stringify(res)
        return
