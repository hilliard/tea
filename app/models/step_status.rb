class StepStatus < ActiveRecord::Base
  attr_accessible :stepstatus_name
  belongs_to :step
end
