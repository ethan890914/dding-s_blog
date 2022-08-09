class Article < ApplicationRecord
    has_many :quotes, dependent: :destroy
    validates :title, presence: true
    validates :body, presence: true, length: {minimum:1}
    # validates :review, presence: true
    acts_as_taggable_on :tags
    # has_rich_text :review
    paginates_per 10
end
