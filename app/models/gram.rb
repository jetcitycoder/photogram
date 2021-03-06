class Gram < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :message, presence: true, length: { minimum: 3 }
  validates :picture, presence: true

  mount_uploader :picture, PictureUploader
end
