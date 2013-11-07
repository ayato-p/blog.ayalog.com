class RemoveCategoryIdFromPost < ActiveRecord::Migration
  def change
    remove_column :posts, :category_id, :string
  end
end
