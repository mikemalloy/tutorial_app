class EmailList < ActiveRecord::Base
  has_many :email_list_items
  validates :name, :presence => true, :uniqueness => {:case_sensitive => false }
end
