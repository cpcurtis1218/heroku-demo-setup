class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :unit, :recipe_id
end
