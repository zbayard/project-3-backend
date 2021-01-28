class User < ApplicationRecord
    has_many :ownerships
    has_many :songs, through: :ownerships
    has_many :recs

    # def to_json

    # end
end
