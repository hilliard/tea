class TestCase < ActiveRecord::Base
  has_many :steps
  accepts_nested_attributes_for :steps,
                                :reject_if => :all_blank,
                                :allow_destroy => true

  validates_associated :steps

  validates :title,
            :presence => true,
            :uniqueness => { :case_sensitive => false },
            :length => { :maximum => 50, :minimum => 3 }

  validates :precondition,
            :presence => true,
            :length => { :maximum => 50, :minimum => 3 }

  validates :step,
            :presence => true,
            :length => { :maximum => 50, :minimum => 3 }

  validates :expected_results,
            :presence => true,
            :uniqueness => { :case_sensitive => false },
            :length => { :maximum => 50, :minimum => 3 }

  validates :subsystem,
            :presence => true,
            :uniqueness => { :case_sensitive => false },
            :length => { :maximum => 50, :minimum => 3 }

  validates :postcondition,
            :presence => true,
            :uniqueness => { :case_sensitive => false },
            :length => { :maximum => 50, :minimum => 3 }

  validates :requirement_reference,
            :presence => true,
            :uniqueness => { :case_sensitive => false },
            :length => { :maximum => 50, :minimum => 3 }

  validates :comments,
            :presence => true,
            :uniqueness => { :case_sensitive => false },
            :length => { :maximum => 50, :minimum => 3 }



end
