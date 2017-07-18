class ChatGroup < ApplicationRecord
  belongs_to :sender, class_name: 'User', foreign_key: :user_1_id
  belongs_to :recipient, class_name: 'User', foreign_key: :user_2_id

  has_many :messages, dependent: :destroy

  scope :between, -> (user_1_id, user_2_id) do 
    where("(chat_groups.user_1_id = ? and chat_groups.user_2_id = ?) or (chat_groups.user_1_id = ? and chat_groups.user_2_id = ?)",
      user_1_id, user_2_id, user_2_id, user_1_id)
  end
end
