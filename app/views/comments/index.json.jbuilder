json.array!(@comments) do |comment|
  json.extract! comment, :id, :body, :users_id, :links_id
  json.url comment_url(comment, format: :json)
end
