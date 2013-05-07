class Cart
  include Mongoid::Document
  include Mongoid::Timestamps

  has_many :line_items, dependent: :destroy
end
