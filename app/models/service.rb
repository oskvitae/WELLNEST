class Service < ApplicationRecord
  belongs_to :user
  has_many :booking, dependant: :destroy
end

class Services < ApplicationRecord
  def self.search(query)
    where("title LIKE ? OR content LIKE ?", "%#{query}%", "%#{query}%")
  end
end
