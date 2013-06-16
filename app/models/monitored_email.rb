class MonitoredEmail < ActiveRecord::Base
  attr_accessible :email, :recipient_list_id, :user_id, :user, :recipient_list

  validates_uniqueness_of  :user_id, :scope => :email

  belongs_to :user
  belongs_to :recipient_list
end
