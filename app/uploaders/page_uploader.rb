# encoding: utf-8

class PagesUploader < CarrierWave::Uploader::Base

  storage :file

  def store_dir
    "uploads/magazines/#{model.magazine.id}"
  end


  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process :resize_to_fit => [50, 50]
  # end

end
