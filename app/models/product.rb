class Product < ActiveRecord::Base
  attr_accessible :active, :description, :name, :price, :category_id

  before_save :set_defaults

  #relations
  belongs_to :category
  has_many :variants, :dependent => :destroy



  #validations
  validates :name, :category_id, presence: true
  validates :price, :presence => true,
            :numericality => { :only_integer => true, :greater_than => 0 }


  #methods
  def set_defaults
    self.active ||= false
  end
end
