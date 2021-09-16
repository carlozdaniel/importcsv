require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :item => "MyString",
      :price => "MyString",
      :total => "MyString",
      :seller => nil
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input[name=?]", "product[item]"

      assert_select "input[name=?]", "product[price]"

      assert_select "input[name=?]", "product[total]"

      assert_select "input[name=?]", "product[seller_id]"
    end
  end
end
