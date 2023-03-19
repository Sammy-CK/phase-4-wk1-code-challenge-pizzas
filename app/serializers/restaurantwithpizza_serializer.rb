class RestaurantwithpizzaSerializer < ActiveModel::Serializer
  attributes :id, :name, :address

  has_many :pizzas, serializer: PizzaSerializer
end
