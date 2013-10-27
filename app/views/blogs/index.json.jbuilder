json.array!(@blogs) do |blog|
  json.extract! blog, :title
  json.url blog_url(blog, format: :json)
end
