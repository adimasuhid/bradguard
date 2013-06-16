class RecipientList < ActiveRecord::Base
  attr_accessible :mail_sender, :name, :user_id, :user, :monitored_email

  belongs_to :user
  has_one :monitored_email
  has_many :recipients
end
