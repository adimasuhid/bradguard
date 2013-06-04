class MonitoredEmail < ActiveRecord::Base
  attr_accessible :email, :recipient_list_id, :user_id, :user, :recipient_lists

  belongs_to :user
  has_many :recipient_lists
end
