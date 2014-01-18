require 'middleman-core/templates'

module Middleman
  module Tako

    class Template < Middleman::Templates::Base
      class_option 'css_dir',
        default: 'assets/stylesheets',
        desc: 'The path to the css files'
      class_option 'js_dir',
        default: 'assets/javascripts',
        desc: 'The path to the javascript files'
      class_option 'images_dir',
        default: 'assets/images',
        desc: 'The path to the image files'

      def self.source_root
        File.join(File.dirname(__FILE__), 'template')
      end

      def build_scaffold!
        template 'shared/Gemfile.tt', File.join(location, 'Gemfile')
        template 'shared/config.tt', File.join(location, 'config.rb')
        copy_file 'source/index.slim', File.join(location, 'source/index.slim')
        copy_file 'source/layouts/application.slim', File.join(location, 'source/layouts/application.slim')
      end
    end
  end
end