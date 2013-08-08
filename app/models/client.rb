class Client < ActiveRecord::Base
  validates :identifier, presence: true, uniqueness: true, numericality: true
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :phone, presence: true
  validates :country_code, presence: true
  
  def country_name
    ::CountrySelect::COUNTRIES[country_code]
  end
end
