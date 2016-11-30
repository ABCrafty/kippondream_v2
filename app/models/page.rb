class Page < ApplicationRecord

  belongs_to :magazine
  validates_presence_of :magazine
  mount_uploader :image, PageUploader

end
