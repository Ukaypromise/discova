class User < ApplicationRecord
  has_many :post, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_one_attached :image
  has_many :notifications, as: :recipient, dependent: :destroy
  has_many :social_handle, dependent: :destroy
  
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:user, :moderator, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end
end
