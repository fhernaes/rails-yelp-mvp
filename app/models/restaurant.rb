class Restaurant < ApplicationRecord
  validates :name, :address, :phone_number, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian) }, presence: true
  has_many :reviews, dependent: :destroy
end
