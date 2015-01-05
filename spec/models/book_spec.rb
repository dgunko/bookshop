require 'rails_helper'

RSpec.describe Book, :type => :model do
  let(:book) {FactoryGirl.create :book}

  it "has a title" do
    expect(book).to validate_presence_of(:title)
  end

  it {should validate_uniqueness_of(:title)}

  it "has a price" do
    expect(book).to validate_presence_of(:price)
  end

  it "has a in_stok" do
    expect(book).to validate_presence_of(:in_stok)
  end

  it "has a author" do
    expect(book).to validate_presence_of(:author)
  end

  it "has a category" do
    expect(book).to validate_presence_of(:category)
  end

end
