require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:category) { Category.new(name: "cars") }
  subject { Product.new(name: "new car", description: "red new car", image: "www.google.com", price_cents: 30000, quantity: 10, category: category) }
  describe 'Validations' do
    # validation tests/examples here
    it "product is valid" do 
      expect(subject).to be_valid
    end
    it "product name is valid" do 
      expect(subject.name).to be_present
    end
    it "product price is valid" do
      expect(subject.price).to be_present
    end
    it "product quantity is valid" do
      expect(subject.quantity).to be_present
    end
    it "product category is valid" do
      expect(subject.category).to be_present
    end
  end
end