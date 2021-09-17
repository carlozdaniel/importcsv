require 'rails_helper'

RSpec.describe Seller, type: :model do
  it 'Recorded if all the fields are valid.' do
    seller = FactoryBot.create(:seller)
    product = FactoryBot.create(:product, seller_id: seller.id)
    product.save
    expect(Product.count).to eq(1)
 end
end


