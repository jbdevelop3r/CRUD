class Music < ApplicationRecord
    
    has_many :comments, dependent: :destroy

    validates :composer, presence: true
    validates :song, presence: true
    belongs_to :user
end