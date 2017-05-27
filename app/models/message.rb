class Message < ApplicationRecord
  belongs_to :user
  belongs_to :group
  validates :text, :user_id, :group_id, presence: true
end
