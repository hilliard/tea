json.array!(@test_items) do |test_item|
  json.extract! test_item, :track_id, :description, :tester, :version, :status, :priority, :risk, :plan_comp_date, :actl_start_time, :actl_comp_time, :test_type, :comment, :specification, :bug_id
  json.url test_item_url(test_item, format: :json)
end
