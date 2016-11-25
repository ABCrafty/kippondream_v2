class Admin::Carousel < ApplicationRecord
  mount_uploader :image, CarouselUploader
end
