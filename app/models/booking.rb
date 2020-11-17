class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :tool
  has_one_attached :photo
end
