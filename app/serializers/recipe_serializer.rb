class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :steps, :image_url
  belongs_to :user
end
