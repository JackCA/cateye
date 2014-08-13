bourbonPaths = require('node-bourbon').includePaths
neatPaths = require('node-neat').includePaths

exports.config =
  # See http://brunch.io/#documentation for docs.
  paths:
    watched: ['app', 'test', 'vendor', '*.static.jade']

  files:
    javascripts:
      joinTo: 'app.js'
      order:
        before: ['bower_components/jquery/jquery.js', 'bower_components/underscore/underscore.js', 'bower_components/backbone/backbone.js']

    stylesheets:
      joinTo: 'app.css'
      defaultExtension: 'sass'
      src: ["*.{scss, sass}", "!_*.{scss, sass}"]

    templates:
      joinTo: 'app.js'
      root: 'templates/'  # default is null
      defaultExtension: 'hbs'

  plugins:
    sass:
      mode: 'native'
      debug: 'comments'
      options:
        includePaths: bourbonPaths
