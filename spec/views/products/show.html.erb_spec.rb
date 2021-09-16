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

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Item/)
    expect(rendered).to match(/Price/)
    expect(rendered).to match(/Total/)
    expect(rendered).to match(//)
  end
end
