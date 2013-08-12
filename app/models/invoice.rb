class Invoice < ActiveRecord::Base
  belongs_to :recipient, polymorphic: true
  
  validates :recipient, presence: true
  validates :identifier, presence: true, uniqueness: true
  validates :amount, presence: true, numericality: true
  validates :ordered_at, presence: true
  validates_date :ordered_at
  validates_date :invoiced_at, allow_blank: true
  validates_date :shipped_at, allow_blank: true
  validates_date :delivered_at, allow_blank: true
end
