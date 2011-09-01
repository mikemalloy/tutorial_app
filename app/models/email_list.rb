class EmailList < ActiveRecord::Base
  has_many :email_list_items, :dependent => :destroy
  validates :name, :presence => true, :uniqueness => {:case_sensitive => false }
end
