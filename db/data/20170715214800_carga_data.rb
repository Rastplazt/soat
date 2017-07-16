class CargaData < SeedMigration::Migration
  def up
  	[
  		{code: "110", name: "MOTOS", subtype: "Menos de 100 c.c.", tax: "8,26", prime: "203100", fosyga: "50", runt: "1610"},
  		{code: "120", name: "MOTOS", subtype: "De 100 a 200 c.c.", tax: "11,09", prime: "272700", fosyga: "50", runt: "1610"},
  		{code: "130", name: "MOTOS", subtype: "Más de 200 c.c.", tax: "12,51", prime: "307600", fosyga: "50", runt: "1610"},
  		{code: "140", name: "MOTOS", subtype: "MOTOCARROS", tax: "12,51", prime: "307600", fosyga: "50", runt: "1610"},
  		{code: "211", name: "CAMPEROS Y CAMIONETAS", subtype: "Menos de 1500 c.c.",year: "0 a 9 años", tax: "13,29", prime: "326800", fosyga: "50", runt: "1610"},
  		{code: "212", name: "CAMPEROS Y CAMIONETAS", subtype: "Menos de 1500 c.c.",year: "10 o mas", tax: "15,99", prime: "393200", fosyga: "50", runt: "1610"},
  		{code: "221", name: "CAMPEROS Y CAMIONETAS", subtype: "1500 a 2500",year: "0 a 9 años", tax: "15,88", prime: "390400", fosyga: "50", runt: "1610"},
  		{code: "222", name: "CAMPEROS Y CAMIONETAS", subtype: "1500 a 2500",year: "10 o mas", tax: "18,82", prime: "462700", fosyga: "50", runt: "1610"},
  		{code: "231", name: "CAMPEROS Y CAMIONETAS", subtype: "Más de 2500 c.c.",year: "0 a 9 años",  tax: "18,63", prime: "458100", fosyga: "50", runt: "1610"},
  		{code: "232", name: "CAMPEROS Y CAMIONETAS", subtype: "Más de 2500 c.c.",year: "10 o mas", tax: "21,39", prime: "525900", fosyga: "50", runt: "1610"},
  		{code: "310", name: "CARGA O MIXTO", subtype: "Menos de 5 toneladas", tax: "14,90", prime: "366300", fosyga: "50", runt: "1610"},
  		{code: "320", name: "CARGA O MIXTO", subtype: "De 5 a 15 toneladas", tax: "21,53", prime: "529400", fosyga: "50", runt: "1610"},
  		{code: "330", name: "CARGA O MIXTO", subtype: "Más de 15 toneladas", tax: "27,23", prime: "669600", fosyga: "50", runt: "1610"},
  		{code: "410", name: "OFICIALES ESPECIALES", subtype: "Menos de 1500 c.c.", tax: "16,77", prime: "412300", fosyga: "50", runt: "1610"},
  		{code: "420", name: "OFICIALES ESPECIALES", subtype: "1500 a 2500", tax: "21,15", prime: "520000", fosyga: "50", runt: "1610"},
  		{code: "430", name: "OFICIALES ESPECIALES", subtype: "Más de 2500 c.c.", tax: "25,36", prime: "623600", fosyga: "50", runt: "1610"},
  		{code: "511", name: "AUTOS FAMILIARES", subtype: "Menos de 1500 c.c.",year: "0 a 9 años", tax: "7,48", prime: "183900", fosyga: "50", runt: "1610"},
  		{code: "512", name: "AUTOS FAMILIARES", subtype: "Menos de 1500 c.c.",year: "10 o mas", tax: "9,93", prime: "244100", fosyga: "50", runt: "1610"},
		{code: "521", name: "AUTOS FAMILIARES", subtype: "1500 a 2500",year: "0 a 9 años", tax: "9,12", prime: "224200", fosyga: "50", runt: "1610"},
		{code: "522", name: "AUTOS FAMILIARES", subtype: "1500 a 2500",year: "10 o mas", tax: "11,35", prime: "279100", fosyga: "50", runt: "1610"},
		{code: "531", name: "AUTOS FAMILIARES", subtype: "Más de 2500 c.c.",year: "0 a 9 años", tax: "10,66", prime: "262100", fosyga: "50", runt: "1610"},
		{code: "532", name: "AUTOS FAMILIARES", subtype: "Más de 2500 c.c.",year: "10 o mas", tax: "12,65", prime: "311000", fosyga: "50", runt: "1610"},
		{code: "611", name: "VEHICULOS PARA SEIS O MAS PASAJEROS", subtype: "Menos de 100 c.c.",year: "0 a 9 años", tax: "13,37", prime: "328700", fosyga: "50", runt: "1610"},
		{code: "612", name: "VEHICULOS PARA SEIS O MAS PASAJEROS", subtype: "Menos de 100 c.c.",year: "10 o mas", tax: "17,08", prime: "420000", fosyga: "50", runt: "1610"},
		{code: "621", name: "VEHICULOS PARA SEIS O MAS PASAJEROS", subtype: "Menos de 100 c.c.",year: "0 a 9 años", tax: "17,91", prime: "440400", fosyga: "50", runt: "1610"},
		{code: "622", name: "VEHICULOS PARA SEIS O MAS PASAJEROS", subtype: "Menos de 100 c.c.",year: "10 o mas", tax: "21,51", prime: "528900", fosyga: "50", runt: "1610"},
		{code: "711", name: "AUTOS DE NEGOCIOS Y TAXIS", subtype: "Menos de 1500 c.c.",year: "0 a 9 años", tax: "9,28", prime: "228200", fosyga: "50", runt: "1610"},
		{code: "712", name: "AUTOS DE NEGOCIOS Y TAXIS", subtype: "Menos de 1500 c.c.",year: "10 o mas", tax: "11,60", prime: "285200", fosyga: "50", runt: "1610"},
		{code: "721", name: "AUTOS DE NEGOCIOS Y TAXIS", subtype: "1500 a 2500",year: "0 a 9 años", tax: "11,54", prime: "283700", fosyga: "50", runt: "1610"},
		{code: "722", name: "AUTOS DE NEGOCIOS Y TAXIS", subtype: "1500 a 2500",year: "10 o mas", tax: "14,27", prime: "350900", fosyga: "50", runt: "1610"},
		{code: "731", name: "AUTOS DE NEGOCIOS Y TAXIS", subtype: "Más de 2500 c.c.",year: "0 a 9 años", tax: "14,90", prime: "366300", fosyga: "50", runt: "1610"},
		{code: "732", name: "AUTOS DE NEGOCIOS Y TAXIS", subtype: "Más de 2500 c.c.",year: "10 o mas", tax: "17,49", prime: "430000", fosyga: "50", runt: "1610"},
		{code: "810", name: "BUSES Y BUSETAS DE SERVICIO PUBLICO URBANO", subtype: "N/A", tax: "21,81", prime: "536300", fosyga: "50", runt: "1610"},
		{code: "910", name: "SERVICIO PUBLICO INTERMUNICIPAL", subtype: "Menor 10 pasajeros", tax: "22,01", prime: "541200", fosyga: "50", runt: "1610"},
		{code: "920", name: "SERVICIO PUBLICO INTERMUNICIPAL", subtype: "10 o más pasajeros", tax: "31,96", prime: "785900", fosyga: "50", runt: "1610"}

    ].each do |vehicle_type|
    	VehicleType.create(vehicle_type)
    end
  end

  def down
  	VehicleType.destroy.all
  end
end
