class Listing < ActiveRecord::Base
  validates :address, presence: true,
  length: {minimum: 5}
end
