json.array!(@weight_units) do |weight_unit|
  json.extract! weight_unit, :id, :name
  json.url weight_unit_url(weight_unit, format: :json)
end
