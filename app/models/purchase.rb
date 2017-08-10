class Purchase < ApplicationRecord
  belongs_to :vehicle
  belongs_to :payment
end
