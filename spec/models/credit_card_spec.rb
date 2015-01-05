require 'rails_helper'

RSpec.describe CreditCard, :type => :model do
  let(:credit_card) {FactoryGirl.create :credit_card}

  it "has a number" do
    expect(credit_card).to validate_presence_of(:number)
  end

  it "has a cvv" do
    expect(credit_card).to validate_presence_of(:cvv)
  end

  it "has a expiration_month" do
    expect(credit_card).to validate_presence_of(:expiration_month)
  end

  it "has a expiration_year" do
    expect(credit_card).to validate_presence_of(:expiration_year)
  end

  it "has a name" do
    expect(credit_card).to validate_presence_of(:firstname)
  end

  it "has a lastname" do
    expect(credit_card).to validate_presence_of(:lastname)
  end

  it "has many orders" do
    expect(credit_card).to have_many(:orders)
  end
end
