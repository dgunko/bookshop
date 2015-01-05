require 'rails_helper'

RSpec.describe Address, :type => :model do
  let(:address) {FactoryGirl.create :address}

  it "has a address" do
    expect(address).to validate_presence_of(:address)
  end

  it "has a zipcode code" do
    expect(address).to validate_presence_of(:zipcode)
  end

  it "has a city" do
    expect(address).to validate_presence_of(:city)
  end

  it "has a phone" do
    expect(address).to validate_presence_of(:phone)
  end

  it "has a country" do
    expect(address).to validate_presence_of(:country)
  end

end
