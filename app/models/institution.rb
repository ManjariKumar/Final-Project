class Institution < ActiveRecord::Base
	has_many :lessons
	validates :inst_name, presence: true, length: {minimum: 5} 
end
