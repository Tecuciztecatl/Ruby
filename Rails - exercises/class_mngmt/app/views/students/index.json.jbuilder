json.array!(@students) do |student|
  json.extract! student, :full_name, :age, :bio, :title
  json.url student_url(student, format: :json)
end
