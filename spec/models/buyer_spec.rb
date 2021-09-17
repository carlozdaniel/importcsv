require 'rails_helper'

RSpec.describe Buyer, type: :model do
  it 'Recorded if all the fields are valid.' do
    buyer = FactoryBot.create(:buyer)
    buyer.save
    expect(Buyer.count).to eq(1)
  end
end
