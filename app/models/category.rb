class Category < ActiveRecord::Base
  has_many :books
  has_many :new_books, -> { order('id DESC').limit(3) }, class_name: 'Book'

  validates :title, presence: true, uniqueness: true

  def self.carusel_books
    selected_category = 2
    Category.find(selected_category).books.includes(:author)
  end

end
