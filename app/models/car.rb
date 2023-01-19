class Car < ApplicationRecord
  validates_presence_of [:name, :model]

	def rent
		if is_rent
			errors.add(:is_rent, "bu araç kiralı olduğu için şu an kiralayamazsınız")

			false
		else
			update(is_rent:true)
		end
	end
end
