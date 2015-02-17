class Order < ActiveRecord::Base
  enum state: ['in progress', 'completed', 'shipped']

  belongs_to :user
  belongs_to :credit_card
  has_one :billing_address, class_name: 'Address'
  has_one :shipping_address, class_name: 'Address'
  has_many :order_items

  validates :user, :credit_card, :completed_date, :state, :billing_address, :shipping_address, presence: true
end
