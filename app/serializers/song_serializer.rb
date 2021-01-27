class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :bio, :artist, :genre, :mp3
  has_many :ownerships
end
