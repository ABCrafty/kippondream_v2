class Page < ApplicationRecord

  belongs_to :magazine
  mount_uploader :image, PageUploader

end
