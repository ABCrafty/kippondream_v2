class Magazine < ApplicationRecord
  extend FriendlyId
  friendly_id :titre, use: :slugged
  mount_uploader :apercu, ThumbnailUploader
  has_many :pages, :inverse_of => :magazine, :dependent => :destroy
  validates_uniqueness_of :slug
end
