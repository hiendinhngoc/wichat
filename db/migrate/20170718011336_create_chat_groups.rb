class CreateChatGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :chat_groups do |t|
      t.integer :user_1_id, null: false
      t.integer :user_2_id, null: false

      t.timestamps
    end

    add_index :chat_groups, :user_1_id
    add_index :chat_groups, :user_2_id
  end
end
