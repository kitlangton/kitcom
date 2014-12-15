class Illustration < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  scope :most_recent, -> { order("created_at").last }
end
