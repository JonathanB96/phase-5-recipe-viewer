class Recipe < ApplicationRecord
    belongs_to :user
    belongs_to :cuisine
    has_many :favorites, through: :user
end
