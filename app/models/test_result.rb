class Test_result < ActiveRecord::Base
  attr_accessible :date_run, :project_id, :server_rev, :client_rev, :number_tests, :number_passed, :number_failed, :actual_failed, :false_neg, :comments
  
  belongs_to :project
end
