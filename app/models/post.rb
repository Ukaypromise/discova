class Post < ApplicationRecord
    # validates title and body
    validates :title, presence: true, length:{minimum:5, maximum:50}

    # validates title and body
    validates :body, presence: true, length: {minimum:10, maximum:50} 
end
