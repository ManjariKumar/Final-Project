class Lesson < ActiveRecord::Base
	belongs_to :institution
	belongs_to :user
	validates :name, presence: true, length: { minimum: 5}

	def self.search_for(query)
    where('name LIKE :query OR description LIKE :query OR category LIKE :query', query: "%#{query}%")
  end
end
