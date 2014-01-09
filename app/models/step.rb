class Step < ActiveRecord::Base
  attr_accessible :step_name
  belongs_to :test_case
  validates :test_case_id, presence: true
end
