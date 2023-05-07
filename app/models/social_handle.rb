class SocialHandle < ApplicationRecord
  belongs_to :user, optional: true

  NAME = %w{Github LinkedIn Twitter Facebook}
end
