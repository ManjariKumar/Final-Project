class Institution < ActiveRecord::Base

	has_many :lessons
	validates :inst_name, presence: true, length: {minimum: 5} 
	validates :inst_id, presence: true, length: {minimum: 7, message: "The Institution Code is too short" } 
	validates_inclusion_of :inst_zip, in: 10000..11999, message: "is not a valid zipcode"
	validates_length_of :inst_phone, in: 7..16, allow_blank: true, message: "Please enter a valid phone number"
	validates :inst_add1, presence: true, length: {minimum: 5, message: "Please enter a valid address"}
	validates :inst_state, presence: true
	validates_inclusion_of :inst_state, in: %w(AK	Alaska	KY	Kentucky	NY	New York
AL	Alabama	LA	Louisiana	OH	Ohio
AR	Arkansas	MA	Massachusetts	OK	Oklahoma
AZ	Arizona	MD	Maryland	OR	Oregon
CA	California	ME	Maine	PA	Pennsylvania
CO	Colorado	MI	Michigan	RI	Rhode Island
CT	Connecticut	MN	Minnesota	SC	South Carolina
DC	District of Columbia	MO	Missouri	SD	South Dakota
DE	Delaware	MS	Mississippi	TN	Tennessee
FL	Florida	MT	Montana	TX	Texas
GA	Georgia	NC	North Carolina	UT	Utah
HI	Hawaii	ND	North Dakota	VA	Virginia
IA	Iowa	NE	Nebraska	VT	Vermont
ID	Idaho	NH	New Hampshire	WA	Washington
IL	Illinois	NJ	New Jersey	WI	Wisconsin
IN	Indiana	NM	New Mexico	WV	West Virginia
KS	Kansas	NV	Nevada	WY	Wyoming), message: "%{value} is not an existing state code in USA"

	geocoded_by :address
	after_validation :geocode 
	# , :if => :address_changed? 


	def address
	  [inst_add1, inst_add2, inst_city, inst_state, inst_zip].compact.join(", ")
	end
end
