require 'middleman-core'

require 'middleman-tako/version'
require 'middleman-tako/template'

Middleman::Templates.register :tako, Middleman::Tako::Template

Slim::Engine.set_default_options :pretty => true