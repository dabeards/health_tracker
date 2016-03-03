json.array!(@exercises_performeds) do |exercises_performed|
  json.extract! exercises_performed, :id, :calories_burned, :excercise_date
  json.url exercises_performed_url(exercises_performed, format: :json)
end
