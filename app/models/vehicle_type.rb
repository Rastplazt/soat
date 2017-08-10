class VehicleType < ApplicationRecord
	has_one :vehicle, class_name: Vehicle, foreign_key: :vehicle_type_id
end
