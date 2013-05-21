class IncomingMail < ActiveRecord::Base
  attr_accessible :message, :sender, :subject
end
