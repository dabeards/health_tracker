json.array!(@taken_steps) do |taken_step|
  json.extract! performed_exercise, :id, :step_date
  json.url performed_exercise_url(performed_exercise, format: :json)
end
