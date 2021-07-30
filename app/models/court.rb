class Court < ApplicationRecord
  validates :name, :facility, :fees, :lights, :address, presence: true
  validates :name, :address, uniqueness: true
  validates :lights, length: { maximum: 3 }
  belongs_to :user
end
