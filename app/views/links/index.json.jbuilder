json.array!(@links) do |link|
  json.extract! link, :id, :title, :body, :title, :user_id, :board_id
  json.url link_url(link, format: :json)
end
