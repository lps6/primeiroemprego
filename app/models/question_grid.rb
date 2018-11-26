class QuestionGrid < ApplicationRecord

  belongs_to :quest
  has_many :answer_grids, inverse_of: :question_grid, dependent: :destroy
  accepts_nested_attributes_for :answer_grids, reject_if: :all_blank, allow_destroy: true
end
