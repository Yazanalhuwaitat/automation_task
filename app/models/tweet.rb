class Tweet < ApplicationRecord
    validates :username, :password, presence: true, length: {minimum: 10, maximum: 20}, uniqueness: true
end
