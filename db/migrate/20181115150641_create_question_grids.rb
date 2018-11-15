class CreateQuestionGrids < ActiveRecord::Migration[5.2]
  def change
    create_table :question_grids do |t|
      t.string :enum
      t.belongs_to :quest, foreign_key: true

      t.timestamps
    end
  end
end
