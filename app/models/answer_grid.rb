class AnswerGrid < ApplicationRecord
  belongs_to :question_grid, foreign_key: 'question_grid_id'
  belongs_to :user, foreign_key: 'user_id'
end
