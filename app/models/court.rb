class Court < ApplicationRecord
  validates :name, :facility, :fees, :lights, :address, presence: true
  belongs_to :user
end
