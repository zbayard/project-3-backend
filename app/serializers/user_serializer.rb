class UserSerializer < ActiveModel::Serializer
  attributes :id,   :age, :bio, :name

   has_many :songs

end
