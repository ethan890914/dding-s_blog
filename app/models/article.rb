class Article < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true, length: {minimum:1}
    # validates :review, presence: true
    acts_as_taggable_on :tags
end
