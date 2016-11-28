class Admin::Manga < ApplicationRecord

  extend FriendlyId
  mount_uploader :thumbnail, ThumbnailUploader
  friendly_id :titre, use: :slugged
  belongs_to :user
  has_many :admin_scen, :class_name => 'Admin::Scan', :inverse_of => :admin_manga, :dependent => :destroy
  validates_uniqueness_of :slug

end
