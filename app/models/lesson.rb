class Lesson < ActiveRecord::Base
	belongs_to :institution
	belongs_to :user
	validates :name, presence: true, length: { minimum: 5}
	validates :institution_id, presence: true, length: { minimum: 7}

	scope :my_lessons, -> (user_id) { where(owner: user_id) }
	
	def self.search_for(query)
	    where('name LIKE :query OR description LIKE :query OR category LIKE :query', query: "%#{query}%")
  	end
end
