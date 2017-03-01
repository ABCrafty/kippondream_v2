class Page < ApplicationRecord

  belongs_to :magazine
  validates_presence_of :magazine
  mount_uploader :image, PageUploader

  def previous
    self.class.where(page_number: (first.page_number - 1), magazine: first.magazine)
  end

  def next
    self.class.where(page_number: (first.page_number + 1), magazine: first.magazine)
  end

end
