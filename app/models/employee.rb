class Employee < ApplicationRecord
  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness:true
  validates :city, :state ,:country, presence:true

  def name
    "#{first_name} #{last_name}".strip.capitalize
  end

  def address
    "#{city}, #{state}, #{country}".strip.capitalize
  end

end
