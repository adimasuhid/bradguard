class Recipient < ActiveRecord::Base
  attr_accessible :number, :recipient_list_id, :recipient_list

  belongs_to :recipient_list
end
