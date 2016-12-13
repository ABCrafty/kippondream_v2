class Peji < ApplicationRecord

  belongs_to :manga
  validates_presence_of :manga
  mount_uploader :image, ScansUploader

end
