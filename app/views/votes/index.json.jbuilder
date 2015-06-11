json.array!(@votes) do |vote|
  json.extract! vote, :id, :number, :upvote, :downvote
  json.url vote_url(vote, format: :json)
end
