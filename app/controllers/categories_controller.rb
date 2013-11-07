class CategoriesController < ApplicationController
  def post_list
    @category = Category.find_by_id(params[:category_id])
    @posts = @category.posts.order("created_at DESC")
  end
end
