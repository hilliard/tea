json.array!(@test_cases) do |test_case|
  json.extract! test_case, :title, :precondition, :step, :testdata, :expected_results, :subsystem, :postcondition, :requirement_reference, :comments
  json.url test_case_url(test_case, format: :json)
end
