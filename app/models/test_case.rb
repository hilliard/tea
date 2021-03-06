class TestCase < ActiveRecord::Base
  attr_accessible :title, :precondition, :step, :testdata, :expected_results, :subsystem, :postcondition, :requirement_reference, :comments
  has_many :steps
  accepts_nested_attributes_for :steps,
                                :reject_if => :all_blank,
                                :allow_destroy => true

  validates_associated :steps

  validates :title,
            :presence => true,
            :uniqueness => { :case_sensitive => false },
            :length => { :maximum => 50, :minimum => 3 }

  # validates :precondition,
  #          :presence => true,
  #          :length => { :maximum => 50, :minimum => 3 }
  #

  validates :step,
            :presence => true,
            :length => { :maximum => 50, :minimum => 1 }

  # validates :expected_results,
  #         :presence => true,
  #         :uniqueness => { :case_sensitive => false },
  #         :length => { :maximum => 50, :minimum => 3 }

  #validates :subsystem,
  #          :presence => true,
  #          :uniqueness => { :case_sensitive => false },
  #          :length => { :maximum => 50, :minimum => 1 }

  # validates :postcondition,
            # :presence => true,
            # :uniqueness => { :case_sensitive => false },
            # :length => { :maximum => 50, :minimum => 3 }

  # validates :requirement_reference,
  #          :presence => true,
  #          :uniqueness => { :case_sensitive => false },
  #          :length => { :maximum => 50, :minimum => 3 }

  # validates :comments,
  #          :presence => true,
  #          :uniqueness => { :case_sensitive => false },
  #          :length => { :maximum => 50, :minimum => 3 }



end
