FactoryGirl.define do
  factory :category do
    title {Faker::Lorem.sentence(1)}
  end

end
