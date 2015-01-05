require 'rails_helper'

RSpec.describe Author, :type => :model do
  let(:author) {FactoryGirl.create :author}

  it "has a firstname" do
    expect(author).to validate_presence_of(:first_name)
  end

  it "has a lastname" do
    expect(author).to validate_presence_of(:last_name)
  end

  it "has many books" do
    expect(author).to have_many(:books)
  end

end
