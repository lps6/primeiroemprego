class CreateQuests < ActiveRecord::Migration[5.2]
  def change
    create_table :quests do |t|
      t.string :description
      t.text :summary
      t.integer :creator

      t.timestamps
    end
  end
end
