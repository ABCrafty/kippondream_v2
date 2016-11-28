require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module KipponDream
  class Application < Rails::Application

    config.autoload_paths += %W(#{config.root}/app/models/ckeditor)

  end
end
