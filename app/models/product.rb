class Product
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title
  field :description
  field :price
  field :tags

  has_many :line_items, dependent: :destroy
  has_many :patterns, dependent: :destroy
  has_many :photos, dependent: :destroy
  
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :users

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true

  before_destroy :check_if_purchased

  def to_param
    slug
  end

  private

  def check_if_purchased

  end

end
