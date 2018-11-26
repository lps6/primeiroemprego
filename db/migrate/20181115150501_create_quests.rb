class CreateQuests < ActiveRecord::Migration[5.2]
  def change
    create_table :quests do |t|
      t.string :title
      t.text :description
      t.integer :creator
      t.integer :quant
      t.belongs_to :company, foreign_key: true

      t.timestamps
    end
  end
end
