class Product
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name
  field :description
  field :price
  field :tags

  has_many :patterns
  has_many :photos
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :users

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true

  def to_param
    slug
  end

end
