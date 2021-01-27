class OwnershipSerializer < ActiveModel::Serializer
  attributes :id, :song_id, :user_id
  has_one :user
  has_one :song
end
