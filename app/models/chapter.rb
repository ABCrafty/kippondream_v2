class Chapter < ApplicationRecord

  has_many :pejis, :dependent => :destroy
  extend FriendlyId
  friendly_id :titre, use: :slugged
  belongs_to :manga
  mount_uploader :apercu, ThumbnailUploader

  validates_uniqueness_of :slug

end
