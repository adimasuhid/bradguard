class User < ActiveRecord::Base
  attr_accessible :email, :name

  default_scope order('id desc')

  has_many :recipient_lists
  has_many :incoming_mails
end
