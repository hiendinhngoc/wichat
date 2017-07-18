class Message < ApplicationRecord

  belongs_to :sender, class_name: 'User', foreign_key: :user_id
  belongs_to :chat_group

  validates :content, presence: true, length: { minimum: 1, maximum: 1000 }, allow_blank: false
end
