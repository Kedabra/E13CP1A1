class Sale < ApplicationRecord
  validates :cod, uniqueness: true
  validates :detail, presence: true
  validates :size, inclusion: { in: %w(uno dos tres cuatro cinco)}
  validates :value, numericality: { only_integer: true }
  validates :discount, numericality: { only_integer: true , less_than_or_equal_to: 40,  greater_than_or_equal_to: 1 }
end
