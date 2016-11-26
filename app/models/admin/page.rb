class Admin::Page < ApplicationRecord

  belongs_to :admin_magazine, :class_name => 'Admin::Magazine'
  validates_presence_of :admin_magazine
  mount_uploader :image, PageUploader

end
