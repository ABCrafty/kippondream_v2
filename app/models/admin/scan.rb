class Admin::Scan < ApplicationRecord

  belongs_to :admin_manga, :class_name => 'Admin::Manga'
  validates_presence_of :admin_manga
  mount_uploader :image, ScansUploader

end
