class Event < ApplicationRecord
  has_many :attendances
  has_many :guests, through: :attendances, class_name: 'User'
  belongs_to :admin, class_name: 'User'
end
