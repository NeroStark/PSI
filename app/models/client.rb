class Client < ActiveRecord::Base
  validates :identifier, presence: true, uniqueness: true, numericality: true
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :phone, presence: true
end
