class Page < ApplicationRecord

  belongs_to :magazine
  belongs_to :manga
  mount_uploader :image, ScansUploader

end
