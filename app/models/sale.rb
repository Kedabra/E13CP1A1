class Sale < ApplicationRecord
  validates :cod, uniqueness: true
  validates :detail, presence: true
  validates :size, inclusion: { in: %w(uno dos tres cuatro cinco)}
  validates_numericality_of :value, greater_than_or_equal_to: 0, only_integer: true
validates_numericality_of :discount, less_than_or_equal_to: 40, only_integer: true
end
