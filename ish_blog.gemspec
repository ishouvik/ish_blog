$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ish_blog/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ish_blog"
  s.version     = IshBlog::VERSION
  s.authors     = ["Shouvik Mukherjee"]
  s.email       = ["contact@ishouvik.com"]
  s.homepage    = "https://github.com/ishouvik/ish_blog"
  s.summary     = "A simple blog engine for Rails 4+"
  s.description = "This is a hobby project for me trying to come up with a set of easy to use common modules using Rails 4, Bootstrap and some other very cool stuff."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0"
  s.add_dependency "devise"
  s.add_dependency "cancancan"
  s.add_dependency "rolify"
  s.add_dependency "simple_form"
  s.add_dependency "kaminari"
  s.add_dependency "coffee-rails"
  s.add_dependency "bootstrap-sass"
  s.add_dependency "sass-rails"

  s.add_development_dependency "sqlite3"
end
