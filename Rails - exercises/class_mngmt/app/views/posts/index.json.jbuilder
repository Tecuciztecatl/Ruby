json.array!(@posts) do |post|
  json.extract! post, :topic, :date, :body, :student_id
  json.url post_url(post, format: :json)
end
