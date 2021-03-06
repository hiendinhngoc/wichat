class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :received_messages, class_name: 'Message', foreign_key: :user_to_id
  has_many :sent_messages, class_name: 'Message', foreign_key: :user_from_id
end
