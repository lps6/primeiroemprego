class UserQuest < ApplicationRecord
    belongs_to :user, foreign_key: 'user_id'
    accepts_nested_attributes_for :user
    has_many :answer_grids, inverse_of: :user_quest, dependent: :destroy
    accepts_nested_attributes_for :answer_grids, reject_if: :all_blank, allow_destroy: true
end
