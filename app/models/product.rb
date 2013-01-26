class Product < ActiveRecord::Base
  before_save :set_defaults

  attr_accessible :active, :description, :name, :price

  validates :name, presence: true

  def set_defaults
    self.active ||= false
  end
end
