class QuestionGrid < ApplicationRecord
  belongs_to :quest
  has_many :answers, inverse_of: :question_grid, dependent: :destroy
  accepts_nested_attributes_for :answers, reject_if: :all_blank, allow_destroy: true
end
