class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store, presence: true
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }

  before_create :set_password

  private
  PASSWORD_LENGTH = 8
  def set_password
    self.password = rand(36**PASSWORD_LENGTH).to_s(36)
  end
end
