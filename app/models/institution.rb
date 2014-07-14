class Institution < ActiveRecord::Base

	has_many :lessons
	validates :inst_name, presence: true, length: {minimum: 5} 
	validates :inst_id, presence: true, length: {minimum: 7, message: "The Institution Code is too short" } 
	validates_inclusion_of :inst_zip, in: 10000..11999, message: "is not a valid zipcode"
	validates_length_of :inst_phone, in: 7..16, allow_blank: true, message: "Please enter a valid phone number"
	validates :inst_add1, presence: true, length: {minimum: 5, message: "Please enter a valid address"}
	validates :inst_state, presence: true
	validates_inclusion_of :inst_state, in: %w( NY CA NJ TX AT GA WA FL), message: "%{value} is not an existing state code in USA"

	geocoded_by :address
	after_validation :geocode 
	# , :if => :address_changed? 


	def address
	  [inst_add1, inst_add2, inst_city, inst_state, inst_zip].compact.join(", ")
	end
end
