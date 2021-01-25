class User < ApplicationRecord
    has_many :ownerships
    has_many :songs, through: :ownerships
end
