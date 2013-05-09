class Product
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title
  field :description
  field :price
  field :tags
  field :category_ids

  has_many :line_items, dependent: :destroy
  has_many :patterns, dependent: :destroy
  has_many :photos, dependent: :destroy
  
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :users

  accepts_nested_attributes_for :patterns
  accepts_nested_attributes_for :photos

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true

  before_destroy :check_if_purchased

  scope :newest, order_by('created_at DESC')

  private

  def check_if_purchased

  end

end
