require 'middleman'

require 'middleman-tako/version'
require 'middleman-tako/template'

Middleman::Templates.register :slim, Middleman::Tako::Template

Slim::Engine.set_default_options :pretty => true