class User < ApplicationRecord
  attr_accessor :login

  has_and_belongs_to_many :mangas
  has_many :blogs

  mount_uploader :avatar, AvatarUploader
  mount_uploader :banniere, AvatarUploader


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_h).where(['lower(username) = :value OR lower(email) = :value', { :value => login.downcase }]).first
    elsif conditions.has_key?(:username) || conditions.has_key?(:email)
      where(conditions.to_h).first
    end
  end

  validate :validate_username

  def validate_username
    if User.where(email: username).exists?
      errors.add(:username, :invalid)
    end
  end

  def self.all_except(user)
    where.not(id: user)
  end

end
