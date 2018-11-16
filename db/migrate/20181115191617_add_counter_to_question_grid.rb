class AddCounterToQuestionGrid < ActiveRecord::Migration[5.2]
  def change
    add_column :question_grids, :counter, :integer
  end
end
