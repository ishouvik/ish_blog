module IshBlog
  class Engine < ::Rails::Engine
    isolate_namespace IshBlog

    require 'devise'
    require 'cancan'
    require 'rolify'
    require 'sass-rails'
  end
end
