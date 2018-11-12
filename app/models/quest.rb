class Quest < ApplicationRecord
    belongs_to :company, foreign_key: "creator"
end
