class Message < ApplicationRecord
  belongs_to :user  
  belongs_to :group  
  validate :text, :user_id, :group_id
end
