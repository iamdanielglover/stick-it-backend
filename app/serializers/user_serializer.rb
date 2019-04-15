class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :categories, :notes

  def notes
    object.notes.sort{|a,b| a.id <=> b.id}
  end

  # def categories
  #   object.categories.map do |cat|
  #     CategorySerializer.new(cat)
  #   end
  # end

end
