class Magazine < ApplicationRecord
  extend FriendlyId
  friendly_id :titre, use: :slugged
  mount_uploader :apercu, ThumbnailUploader
  mount_uploader :banniere, ThumbnailUploader
  has_many :pages, :inverse_of => :magazine, :dependent => :destroy
  validates_uniqueness_of :slug


  def first_page
    self.pages.find_by(page_number: 1)
  end

end
