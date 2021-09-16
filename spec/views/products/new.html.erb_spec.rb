require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :item => "MyString",
      :price => "MyString",
      :total => "MyString",
      :seller => nil
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input[name=?]", "product[item]"

      assert_select "input[name=?]", "product[price]"

      assert_select "input[name=?]", "product[total]"

      assert_select "input[name=?]", "product[seller_id]"
    end
  end
end
