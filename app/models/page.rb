class Page < ApplicationRecord

  belongs_to :magazine
  validates_presence_of :magazine
  mount_uploader :image, PageUploader

  def self.previous
    new_page_set = Page.where(page_number: (first.page_number - 1), magazine: first.magazine)
    return new_page_set.count == 0 ? nil : page_set
  end

  def self.next
    new_page_set = Page.where(page_number: (first.page_number + 1), magazine: first.magazine)
    return new_page_set.count == 0 ? nil : page_set
  end

end
