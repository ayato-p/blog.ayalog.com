class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :blog_id
      t.integer :user_id
      t.string :title
      t.text :content
      t.integer :category_id

      t.timestamps
    end
  end
end
