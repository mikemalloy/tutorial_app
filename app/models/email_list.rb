class EmailList < ActiveRecord::Base
  belongs_to :project
  has_many :email_list_items, :dependent => :destroy
  validates :name, :presence => true, :uniqueness => {:case_sensitive => false }
  validates :project_id, :presence => true
end
