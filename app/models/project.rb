class Project < ActiveRecord::Base
  # attr_accessor :name, :description
  attr_accessible :name, :description
  
  validates :name, :presence => true, 
                     :uniqueness => {:case_sensitive => false },
                     :length => {:maximum => 50}
  
  has_many :test_results
  
end
