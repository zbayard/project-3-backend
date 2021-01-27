class Rec < ApplicationRecord
    belongs_to :recer_id, class_name: 'User', optional: true
    belongs_to :recee_id, class_name: 'User', optional: true
    has_one :song
end
