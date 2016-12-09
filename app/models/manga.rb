class Manga < ApplicationRecord
  extend FriendlyId
  mount_uploader :apercu, ThumbnailUploader
  friendly_id :titre, use: :slugged
  belongs_to :user
  has_many :manga_pejis, :class_name => 'Manga::Peji', :inverse_of => :manga, :dependent => :destroy
  validates_uniqueness_of :slug
end
