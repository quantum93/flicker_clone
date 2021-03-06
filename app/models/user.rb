class User < ApplicationRecord
  validates :email, presence: true
  has_many :photos
  has_many :photos, dependent: :destroy
  has_one_attached :profile_picture
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
