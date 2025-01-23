class Service < ApplicationRecord
  belongs_to :user
  has_many :booking, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
