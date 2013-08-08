class Supplier < ActiveRecord::Base
  validates :identifier, presence: true, uniqueness: true, numericality: true
  validates :name, presence: true, uniqueness: true
  validates :contact_mail, email_format: true, allow_blank: true
  validates :address, presence: true
  validates :shipping_address, presence: true
  validates :phone, presence: true
end
