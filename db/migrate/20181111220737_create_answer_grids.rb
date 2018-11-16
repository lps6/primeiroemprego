class CreateAnswerGrids < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_grids do |t|
      t.integer :order
      t.integer :quest_id
      t.integer :question_id
      t.integer :value
      t.integer :user_id

      t.timestamps
    end
  end
end
