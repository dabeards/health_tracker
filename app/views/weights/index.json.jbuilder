json.array!(@weights) do |weight|
  json.extract! weight, :id, :weight, :weight_date
  json.url weight_url(weight, format: :json)
end
