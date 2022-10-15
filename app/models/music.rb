class Music < ApplicationRecord
    validates :composer, presence: true, length: { minimum: 4 }
    validates :song, presence: true, length: { minimum: 4 }
end
