class AnswerGrid < ApplicationRecord
  belongs_to :question_grid, foreign_key: 'question_grid_id'
  belongs_to :user_quest, foreign_key: 'user_quest_id'  
end
