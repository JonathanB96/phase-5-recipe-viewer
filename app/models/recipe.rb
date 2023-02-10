class Recipe < ApplicationRecord
    belongs_to :user
    belongs_to :cuisine
    has_many :favorites, through: :user
    validates :name, :steps, :image_url, :cuisine_id, presence: true
end
