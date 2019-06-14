class Review < ActiveRecord::Base
  validates :product, :user, :description, :rating, presence: true

  belongs_to :product
end
