class Page < ApplicationRecord

  belongs_to :magazine
  validates_presence_of :magazine
  mount_uploader :image, PageUploader

  def previous
    self.class.where('page_number < ?', page_number).limit(1).first
  end

  def next
    self.class.where('page_number > ?', page_number).limit(1).last
  end

  def first_page
    self.class.where('page_number = 1', page_number)
  end

end
