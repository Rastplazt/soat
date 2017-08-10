class Vehicle < ApplicationRecord
  belongs_to :vehicle_type, class_name: VehicleType, foreign_key: :vehicle_type_id

  validates :plate, :presence =>{:message =>"Debe ingresar una matricula."}, :uniqueness => {:message => "Existe un vehiculo con esta placa registrada."}
  def self.search(search)
  	busqueda = search.upcase
    find_by("plate LIKE ?", "%#{busqueda}%")
  end

  def plate=(n)
    write_attribute(:plate, n.to_s.upcase)
  end

  def nombre_vehiculo
    "#{self.plate} - #{self.vehicle_type.name}"
  end

  def monto
  	@fosyga = (self.vehicle_type.prime * self.vehicle_type.fosyga)/100
  	self.vehicle_type.prime + @fosyga + self.vehicle_type.runt
  end

  	def monto_fosyga
		(self.vehicle_type.prime * self.vehicle_type.fosyga)/100
	end
end
