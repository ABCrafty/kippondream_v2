class Page < ApplicationRecord

  belongs_to :magazine
  validates_presence_of :magazine
  mount_uploader :image, PageUploader

  def previous
    self.class.first.where('page_number < ?', page_number).limit(1).first
  end

  def next
    self.class.first.where('page_number > ?', page_number).limit(1).last
  end

end
