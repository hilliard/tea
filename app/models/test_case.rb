class TestCase < ActiveRecord::Base
  attr_accessible :title, :precondition, :step, :testdata, :expected_results, :subsystem, :postcondition, :requirement_reference, :comments

  has_many :steps,  :dependent => :destroy
end
