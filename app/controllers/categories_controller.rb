class CategoriesController < ApplicationController
  def post_list
    @category = Category.find_by_title(params[:category_title])
    @posts = @category.posts.order("created_at DESC")
  end
end
