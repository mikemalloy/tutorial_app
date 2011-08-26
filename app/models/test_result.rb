class Test_result < ActiveRecord::Base
  attr_accessible :date_run, :project_id, :server_rev, :client_rev, :number_tests, :number_passed, :number_failed, :actual_failed, :false_neg, :comments, :result, :send_email
  
  belongs_to :project
  
  def self.search(search)
    if search
      id_array = []
      id_list = Project.where('name LIKE ?', "%#{search}%")
      id_list.each do |project|
        unless id_array.include?( project.id )
          id_array << project.id
        end
      end
      where( :project_id => id_array )
    else
      scoped
    end
  end

  
  
  # default_scope :order => 'test_results.created_at DESC'
end
