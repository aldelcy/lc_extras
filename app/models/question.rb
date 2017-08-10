class Question < ApplicationRecord
    has_many :answers, dependent: :destroy
    belongs_to :questsess
    belongs_to :user
end
