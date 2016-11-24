class Manga < ApplicationRecord

  extend FriendlyId
  mount_uploader :thumbnail, ThumbnailUploader
  friendly_id :titre, use: :slugged
  has_many :scans, :inverse_of => :manga, :dependent => :destroy
  validates_uniqueness_of :slug

end
