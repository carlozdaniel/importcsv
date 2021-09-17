require 'rails_helper'
require 'csv'

RSpec.describe "Products", type: :request do
  describe "GET /products" do
    it "works! (now write some real specs)" do
      get products_path
      expect(response).to have_http_status(200)
    end
  end

  describe '.import' do
    before :each do
      @file = fixture_file_upload('files1.csv', 'text/csv')
    end
    it 'import' do
      expect { post import_products_path, params: { file: @file } }.to change(Product, :count).by(5)
      expect(response).to have_http_status(:found)
    end
  end
end