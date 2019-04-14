class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :categories, :notes

  # def categories
  #   object.categories.map do |cat|
  #     CategorySerializer.new(cat)
  #   end
  # end

end
