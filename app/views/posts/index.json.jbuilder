json.array!(@posts) do |post|
  json.extract! post, :blog_id, :user_id, :title, :content, :category_id
  json.url post_url(post, format: :json)
end
