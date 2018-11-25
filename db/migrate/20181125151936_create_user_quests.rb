class CreateUserQuests < ActiveRecord::Migration[5.2]
  def change
    create_table :user_quests do |t|
      t.integer :quest_id
      t.integer :user_id
      t.timestamps
    end
  end
end
