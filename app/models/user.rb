class User < ApplicationRecord
  has_many :attendances
  has_many :events, through: :attendances, class_name: 'Event'
  has_many :organised_events, class_name: 'Event'
end
