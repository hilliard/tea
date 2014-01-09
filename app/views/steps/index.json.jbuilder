json.array!(@steps) do |step|
  json.extract! step, :step_number, :action, :expected_result, :status
  json.url step_url(step, format: :json)
end
