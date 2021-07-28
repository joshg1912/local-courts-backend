class Court < ApplicationRecord
  validates :name, :facility, :fees, :lights, :address, presence: true
  validates :name, :address, uniqueness: true
  belongs_to :user
end
