class Service < ApplicationRecord
  belongs_to :user
  has_many :booking, dependant: :destroy
end
