class Lesson < ActiveRecord::Base
	belongs_to :institution
	validates :name, presence: true, length: { minimum: 5}

	def self.search_for(query)
    where('name LIKE :query OR description LIKE :query', query: "%#{query}%")
  end
end
