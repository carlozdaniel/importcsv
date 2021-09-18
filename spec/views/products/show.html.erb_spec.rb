require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :item => "Item",
      :price => "Price",
      :total => "Total",
      :seller => nil
    ))
  end
end
