class Payment < ApplicationRecord
  validate :expiration_date_cannot_be_in_the_past
  validates :numcard , :numericality =>{:message =>"Debe ingresar solo numeros."}, :presence =>{:message =>"Debe ingresar un numero de tarjeta valido."}

  def expiration_date_cannot_be_in_the_past
    if expiry_date.present? && expiry_date < Date.today
      errors.add(:expiry_date, "Fecha de vencimiento no puede ser inferior a la fecha actual")
    end
  end 
end
