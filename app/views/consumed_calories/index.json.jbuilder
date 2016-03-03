json.array!(@consumed_calories) do |consumed_calory|
  json.extract! consumed_calory, :id, :consumed_calories, :calories_date
  json.url consumed_calory_url(consumed_calory, format: :json)
end
