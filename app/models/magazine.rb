class Magazine < ApplicationRecord

  extend FriendlyId
  mount_uploader :thumbnail, ThumbnailUploader
  friendly_id :titre, use: :slugged
  has_many :pages, :inverse_of => :magazine, :dependent => :destroy
  validates_uniqueness_of :slug

end
