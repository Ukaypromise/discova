class Post < ApplicationRecord
    belongs_to :user
    has_one_attached :image
    has_rich_text :body
    has_many :comments, dependent: :destroy
    validates :title, presence: true, length:{minimum:5, maximum:50}
    validates :body, presence: true, length: {minimum:10, maximum:500} 
end
