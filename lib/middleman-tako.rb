require 'middleman-core'

require 'middleman-tako/template'

Slim::Engine.set_default_options :pretty => true
Middleman::Templates.register :tako, Middleman::Tako::Template