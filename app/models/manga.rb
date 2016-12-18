class Manga < ApplicationRecord

=begin
  extend FriendlyId
  friendly_id :titre, use: :slugged
=end
  has_many :chapters , :inverse_of => :manga, :dependent => :destroy
  mount_uploader :apercu, ThumbnailUploader

  has_and_belongs_to_many :users

end
