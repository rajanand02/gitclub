Meteor.methods 
  getGists: (username)->
    GithubApi = Meteor.npmRequire('github')
    github = new GithubApi(version: "3.0.0")
    github.user.getFollowers
      user: "rajanand02"
    , (err, res) ->
      console.log JSON.stringify(res)
      return
