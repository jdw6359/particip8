json.array!(@ratings) do |rating|
  json.extract! rating, :id, :evaluation_id, :rating_value, :user_id
  json.url rating_url(rating, format: :json)
end
