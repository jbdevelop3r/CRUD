class Music < ApplicationRecord
    validates :composer, presence: true
    validates :song, presence: true
end
