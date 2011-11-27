class Ptest < ActiveRecord::Base
  belongs_to :metric
  belongs_to :project
  has_many :ptest_results
  validates :project_id, :presence => true
  validates :metric_id, :presence => true
  validates :name, :presence => true
end
