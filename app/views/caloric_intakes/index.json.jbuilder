json.array!(@caloric_intakes) do |caloric_intake|
  json.extract! caloric_intake, :id, :consumed_calories, :calories_date
  json.url caloric_intake_url(caloric_intake, format: :json)
end
