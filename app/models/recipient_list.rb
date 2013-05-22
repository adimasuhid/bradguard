class RecipientList < ActiveRecord::Base
  attr_accessible :mail_sender, :name, :user_id, :user

  belongs_to :user
  has_many :recipients
end
