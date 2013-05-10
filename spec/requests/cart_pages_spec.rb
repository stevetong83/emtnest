require 'spec_helper'

describe "CartPages" do
  describe "Line Items" do
    let(:product) {FactoryGirl.create :product}

    it "should add a product to the cart" do
      visit product_path(product)
    end
  end
end
