class RecipientList < ActiveRecord::Base
  attr_accessible :mail_sender, :name, :user_id, :user

  belongs_to :user
  belongs_to :monitored_email
  has_many :recipients
end
