class PerformanceTest < ActiveRecord::Base
  belongs_to :project
  has_many :performance_test_results
  
  validates :name, :presence => true, 
                     :uniqueness => {:case_sensitive => false },
                     :length => {:maximum => 50}
                     
end
