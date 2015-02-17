class Book < ActiveRecord::Base
  belongs_to :category
  belongs_to :author
  has_many :ratings, dependent: :destroy

  validates :title, :in_stok, :price, :category, :author, presence: true
  validates :title, uniqueness: true

  mount_uploader :photo, PhotoUploader
end
