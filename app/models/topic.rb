class Topic < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  mount_uploader :picture, PictureUploader
  validates:name, presence: true
  validates:contents, presence: true
end
