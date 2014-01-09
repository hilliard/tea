json.array!(@priorities) do |priority|
  json.extract! priority, :priority_name
  json.url priority_url(priority, format: :json)
end
