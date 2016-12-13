# encoding: utf-8

class AvatarUploader < CarrierWave::Uploader::Base

  storage :file

  def store_dir
    "uploads/membres/#{model.id}"
  end

end
