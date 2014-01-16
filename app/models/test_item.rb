class TestItem < ActiveRecord::Base
    attr_accessible :track_id, :description, :tester, :version, :status, :priority, :risk, :plan_comp_date, :actl_start_time, :actl_comp_time, :test_type, :comment, :specification, :bug_id
end
