class LineItem
  include Mongoid::Document
  include Mongoid::Timestamps

  field :cart_id
  field :product_id
  field :quantity,    default: 1

  belongs_to :cart
  belongs_to :product

end
