class PerformanceTestResult < ActiveRecord::Base
  belongs_to :performance_test
  # default_scope :order => 'performance_test_results.date_run ASC'
  
  validates :build, :presence => true
  
  def PerformanceTestResult.show_levels_query( performance_test_id )
    where( "performance_test_id = ?", performance_test_id ).order( "date_run desc").limit(10).reverse
  end
  
  def PerformanceTestResult.show_query( performance_test_id )
    where( "performance_test_id = ?", performance_test_id ).order( "date_run desc").reverse
  end
  
end
