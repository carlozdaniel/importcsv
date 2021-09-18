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
end
