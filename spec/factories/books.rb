FactoryGirl.define do
  factory :book do
    title {Faker::Lorem.sentence(1)}
    price {Faker::Commerce.price}
    in_stok {Faker::Number.digit}
    author { FactoryGirl.create(:author) }
    category { FactoryGirl.create(:category) }
  end

end
