class User < ApplicationRecord
    has_many :ownerships
    has_many :songs, through: :ownerships
    has_many :recs
end
