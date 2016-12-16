class Peji < ApplicationRecord

  belongs_to :chapter, :inverse_of => :pejis
  validates_presence_of :chapter
  mount_uploader :image, ScansUploader

  def previous
    self.class.where('scan_number < ?', scan_number).limit(1).first
  end

  def next
    self.class.where('scan_number > ?', scan_number).limit(1).last
  end

end
