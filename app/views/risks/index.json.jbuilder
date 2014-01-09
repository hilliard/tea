json.array!(@risks) do |risk|
  json.extract! risk, :risk_name
  json.url risk_url(risk, format: :json)
end
