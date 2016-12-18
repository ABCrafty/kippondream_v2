class Chapter < ApplicationRecord

  has_many :pejis, :dependent => :destroy
  belongs_to :manga
  mount_uploader :apercu, ThumbnailUploader

  def plus_un

  end

  #self.class.where('scan_number < ?', scan_number).limit(1).first


end
