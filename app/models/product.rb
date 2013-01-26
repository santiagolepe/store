class Product < ActiveRecord::Base
  before_save :set_defaults

  belongs_to :category

  attr_accessible :active, :description, :name, :price

  validates :name, presence: true

  def set_defaults
    self.active ||= false
  end
end
