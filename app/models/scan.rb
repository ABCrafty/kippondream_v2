class Scan < ApplicationRecord
  belongs_to :manga
  mount_uploader :image, ScansUploader
end
