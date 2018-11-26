class CreateAnswerGrids < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_grids do |t|
      t.integer :value
      t.belongs_to :question_grid, foreign_key: true

      t.timestamps
    end
  end
end
