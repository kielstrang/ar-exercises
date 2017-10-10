class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validate :has_clothes
  before_destroy :check_for_employees

  private
  def has_clothes
    mens_apparel || womens_apparel
  end

  def check_for_employees
    if employees.count > 0
      throw :abort
    end
  end
end
