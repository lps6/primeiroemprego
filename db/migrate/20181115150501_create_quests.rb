class CreateQuests < ActiveRecord::Migration[5.2]
  def change
    create_table :quests do |t|
      t.string :title
      t.text :description
      t.integer :creator

      t.timestamps
    end
  end
end
