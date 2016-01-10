module IshBlog
  class Post < ActiveRecord::Base
    enum status: { published: 1, drafted: 2, archived: 3 }

    # Add Roles to model using Rolify
  	resourcify

  	# Tagging with acts_as_taggable_on gem
  	acts_as_taggable_on :tags

    # Scopes
    scope :sorted,    -> { order(created_at: :desc) }
    scope :published, -> { where(status: :published) }
    scope :drafted,   -> { where(status: :draft) }
    scope :archived,  -> { where(status: :archived) }

    # Associations
    belongs_to :owner, class_name: User, foreign_key: :owner_id
    # has_and_belongs_to_many :categories

    def self.published?
      (self.status == 'published') ? (return true) : (return false)
    end

    def self.drafted?
      (self.status == 'drafted') ? (return true) : (return false)
    end

    def self.archived?
      (self.status == 'archived') ? (return true) : (return false)
    end
  end
end
