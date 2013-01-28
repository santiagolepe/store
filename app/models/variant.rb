class Variant < ActiveRecord::Base
  belongs_to :product
  attr_accessible :color, :nationality, :size, :image

  validates :color,  presence: true
end
