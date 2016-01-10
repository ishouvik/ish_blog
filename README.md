# IshBlog (UNSTABLE)

This is a hobby project for me trying to come up with a set of easy to use common modules using Rails 4, Bootstrap and some other very cool stuff.

## Dependencies

* jQuery
* Bootstrap
Check the gemspec file for other gem dependencies

## Installation

* Include  `ish_blog` in your Gemfile
  ```ruby
  gem 'ish_blog', github: 'ishouvik/ish_blog'
  ```
 And then execute:
  $ bundle

* Add to `app/assets/javascripts/application.js`
  ```javascript
  //= require ish_blog/application
  ```

* Add to `app/assets/stylesheets/application.css`
  ```
  *= require ish_blog/application
  ```

  or

  Use SCSS
  ```scss
  @import 'ish_blog/application';
  ```

* Copy migrations
  $  rake ish_blog:install:migrations

  And then run it:

  $ rake db:migrate

* Mount routes on `config/routes.rb`
  ```ruby
  mount IshBlog::Engine => "/blog"
  ```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ishouvik/twitter_bootstrap_wizard_rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org/) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
