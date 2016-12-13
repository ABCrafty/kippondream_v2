# encoding: utf-8

class BlogUploader < CarrierWave::Uploader::Base

  storage :file

  def store_dir
    'uploads/blog'
  end

end
