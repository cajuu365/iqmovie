class Movie < ApplicationRecord
    belongs_to :user
    validates :title, presence:true, uniqueness: true
    validates :summary, presence:true, length: {minimum:100}
    validates :vote_counting, presence:true, inclusion: { in: 1..100 }
    validates :release_date, presence:true
end
