Router.configure
  layoutTemplate: 'layout'
  notFoundTemplate: 'not_found'
  loadingTemplate: 'loading_template'

Router.map ->
  @route "root",
    path: "/"
    layoutTemplate: 'layout'
    template: "home"
