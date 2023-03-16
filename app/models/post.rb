class Post < ApplicationRecord
    validates :title, presence: true
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
    validates :content, presence: true,  length: {minimum: 100}
end
