class CreateQuests < ActiveRecord::Migration[5.2]
  def change
    create_table :quests do |t|
      t.string :description
      t.text :summary
      t.string :creator

      t.timestamps
    end
  end
end
