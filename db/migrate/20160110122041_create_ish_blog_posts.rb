class CreateIshBlogPosts < ActiveRecord::Migration
  def change
    create_table :ish_blog_posts do |t|
      t.integer :owner_id
      t.string :title
      t.text :description
      t.text :excerpt

      t.timestamps null: false
    end
    add_index :ish_blog_posts, :owner_id
  end
end
