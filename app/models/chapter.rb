class Chapter < ApplicationRecord

  has_many :pejis, :dependent => :destroy
  belongs_to :manga
  mount_uploader :apercu, ThumbnailUploader

end
