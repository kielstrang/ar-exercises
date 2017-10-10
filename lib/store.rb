class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validate :has_clothes

  def has_clothes
    mens_apparel || womens_apparel
  end

end
