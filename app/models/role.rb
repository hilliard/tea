class Role < ActiveRecord::Base
	 attr_accessible :name, :description
	 has_and_belongs_to_many :users
	 validates_presence_of :name, :on => :create
	 validates_presence_of :description, :on => :create
	 
end
