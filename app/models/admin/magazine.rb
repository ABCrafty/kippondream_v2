class Admin::Magazine < ApplicationRecord

  extend FriendlyId
  friendly_id :titre, use: :slugged
  mount_uploader :thumbnail, ThumbnailUploader
  has_many :admin_pages, :class_name => 'Admin::Page', :inverse_of => :admin_magazine, :dependent => :destroy
  validates_uniqueness_of :slug

end
