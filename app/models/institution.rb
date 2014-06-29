class Institution < ActiveRecord::Base

	has_many :lessons
	validates :inst_name, presence: true, length: {minimum: 5} 
	geocoded_by :address
	after_validation :geocode 
	# , :if => :address_changed? 


	def address
	  [inst_add1, inst_add2, inst_city, inst_state, inst_zip].compact.join(", ")
	end
end
