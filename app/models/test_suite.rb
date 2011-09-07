class TestSuite < ActiveRecord::Base
  attr_accessible :project_id, :name, :suite_type, :num_tests, :num_automated, :manual_time
  belongs_to :project
  has_many :test_results
  
  validates :project_id, :presence => true
  validates :num_tests, :presence => true
  validates :num_automated, :presence => true
  
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
end
