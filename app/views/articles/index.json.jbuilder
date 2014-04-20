json.array!(@articles) do |article|
  json.extract! article, :id, :summary, :body
  json.url article_url(article, format: :json)
end
