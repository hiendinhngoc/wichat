class User < ApplicationRecord

  has_many :received_messages, class_name: 'Message', foreign_key: :user_to_id
  has_many :sent_messages, class_name: 'Message', foreign_key: :user_from_id
end
