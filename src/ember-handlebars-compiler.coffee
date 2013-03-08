# https://gist.github.com/2013669
jsdom = require("jsdom").jsdom
doc = jsdom()
global.window = doc.createWindow()
require('ember')

module.exports = (->


  return (templateData)->
    Ember.Handlebars.precompile(templateData).toString()
)()
