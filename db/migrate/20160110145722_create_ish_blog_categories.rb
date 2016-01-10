class CreateIshBlogCategories < ActiveRecord::Migration
  def change
    create_table :ish_blog_categories do |t|
      t.string :title
      t.string :slug
      t.text :description

      t.timestamps null: false
    end
    add_index :ish_blog_categories, :slug
  end
end
