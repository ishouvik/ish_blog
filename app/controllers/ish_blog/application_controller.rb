module IshBlog
  class ApplicationController < ActionController::Base
    def current_ability
    @current_ability ||= IshBlog::Ability.new(current_user)
  end
  end
end
