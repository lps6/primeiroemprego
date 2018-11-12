class CreateQuestionGrids < ActiveRecord::Migration[5.2]
  def change
    create_table :question_grids do |t|
      t.integer :order
      t.boolean :positive
      t.integer :range
      t.integer :increment
      t.integer :quest_id

      t.timestamps
    end
  end
end
