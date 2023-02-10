class Favorite < ApplicationRecord
    belongs_to :user
    validates :recipe_name, uniqueness: true
end
