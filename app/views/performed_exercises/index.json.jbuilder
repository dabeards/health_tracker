json.array!(@performed_exercises) do |performed_exercise|
  json.extract! performed_exercise, :id, :burned_calories, :exercise_date
  json.url performed_exercise_url(performed_exercise, format: :json)
end
