class ChatGroup < ApplicationRecord
  belongs_to :sender, class_name: 'User', foreign_key: :user_1_id
  belongs_to :recipient, class_name: 'User', foreign_key: :user_2_id
end
