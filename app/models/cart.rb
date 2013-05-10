class Cart
  include Mongoid::Document
  include Mongoid::Timestamps

  has_many :line_items, dependent: :destroy

  def add_product(product_id)
    current_item = line_items.where(product_id: product_id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(product_id: product_id)
    end
  end
end
