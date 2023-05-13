class Post < ApplicationRecord
    
    validates :title, presence: true, length:{minimum:5, maximum:50}
    validates :body, presence: true, length: {minimum:10, maximum:5000} 

    belongs_to :user
    has_one_attached :image
    has_rich_text :body
    has_many :comments, dependent: :destroy
    has_noticed_notifications model_name: "Notification"
    # has_many :notifications, through: :user, dependent: :destroy

end
