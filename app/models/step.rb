class Step < ActiveRecord::Base
  belongs_to :test_case

  validates :step_number,
            :presence => true,
            :length => { :maximum => 10 }

  validates :action,
            :presence => true,
            :length => { :maximum => 76 }

  # validates :expected_result,
  #          :presence => true,
  #          :length => { :maximum => 76, :minimum => 3 }
end
