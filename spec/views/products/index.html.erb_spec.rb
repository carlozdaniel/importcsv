require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :item => "Item",
        :price => "Price",
        :total => "Total",
        :seller => nil
      ),
      Product.create!(
        :item => "Item",
        :price => "Price",
        :total => "Total",
        :seller => nil
      )
    ])
  end
end
