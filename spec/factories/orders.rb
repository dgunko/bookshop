FactoryGirl.define do
    factory :order do
    credit_card {FactoryGirl.create(:credit_card)}
    user {FactoryGirl.create(:user)}
    order_item {FactoryGirl.create(:order_item)}
    
    completed_date {Time.now}
    billing_address {FactoryGirl.create(:address)}
    shipping_address {FactoryGirl.create(:address)}
    state {'in progress'}
  end

end
