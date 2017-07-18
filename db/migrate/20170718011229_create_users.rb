class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :role, null: false, default: 0
      t.string :name, null: false, default: ""

      t.timestamps
    end
  end
end
