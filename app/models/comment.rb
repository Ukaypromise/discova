class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  has_rich_text :body

  after_create_commit :notify_recipient
end
