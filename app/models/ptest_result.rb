class PtestResult < ActiveRecord::Base
  belongs_to :ptest
  belongs_to :device
  belongs_to :operating_system
  belongs_to :connection
  belongs_to :browser
  validates :ptest_id, :presence => true
  validates :environment, :presence => true
  validates :device_id, :presence => true
  validates :operating_system_id, :presence => true
  validates :connection_id, :presence => true
  validates :browser_id, :presence => true
  validates :values, :presence => true
end
