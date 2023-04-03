class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    has_many :recipes
    has_many :cuisines, through: :recipes
    has_many :favorites
    has_secure_password
end
