class Admin::Article < ApplicationRecord

  extend FriendlyId
  friendly_id :titre, use: :slugged
  belongs_to :user
  validates_uniqueness_of :slug

end
