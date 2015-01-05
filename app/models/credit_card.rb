class CreditCard < ActiveRecord::Base
  belongs_to :user
  has_many :orders

  validates :user, :number, :cvv, :expiration_month, :expiration_year, :firstname, :lastname, presence: true
end
