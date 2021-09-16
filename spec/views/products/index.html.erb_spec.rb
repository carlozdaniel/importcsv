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

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Item".to_s, :count => 2
    assert_select "tr>td", :text => "Price".to_s, :count => 2
    assert_select "tr>td", :text => "Total".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
