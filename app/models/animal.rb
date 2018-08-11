class Animal < ApplicationRecord
  mount_uploader :picture, PictureUploader
end
