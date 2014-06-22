class Lesson < ActiveRecord::Base
	belongs_to :institution
	validates :name, presence: true, length: { minimum: 5}
end
