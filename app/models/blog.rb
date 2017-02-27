class Blog < ApplicationRecord

  extend FriendlyId
  friendly_id :titre, use: :slugged
  belongs_to :user
  mount_uploader :illu1, BlogUploader
  mount_uploader :illu2, BlogUploader
end
