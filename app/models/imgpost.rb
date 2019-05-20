class Imgpost < ApplicationRecord
  mount_uploader :image, AttachmentUploader
  # Tells rails to use this uploader for this model.
  validates :title, presence: true
  # Make sure the title is present.
end
