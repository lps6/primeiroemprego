class Quest < ApplicationRecord

    has_many :question_grids, inverse_of: :quest, dependent: :destroy
    accepts_nested_attributes_for :question_grids, reject_if: :all_blank, allow_destroy: true

end
