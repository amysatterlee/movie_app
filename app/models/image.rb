class Image < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PictureUploader
  validate :photo_size

  private
    def photo_size
      if photo.size > 5.megabytes
        errors.add(:photo, "should be less than 5MB")
      end
    end
end
