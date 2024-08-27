class Tweet < ApplicationRecord
    validates :username, :password, presence: true, length: {minimum: 5, maximum: 10}, uniqueness: true
end
