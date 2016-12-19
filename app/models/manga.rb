class Manga < ApplicationRecord

  extend FriendlyId
  friendly_id :titre, use: :slugged
  validates_presence_of :slug

  has_many :chapters , :inverse_of => :manga, :dependent => :destroy
  mount_uploader :apercu, ThumbnailUploader

  has_and_belongs_to_many :users

end
