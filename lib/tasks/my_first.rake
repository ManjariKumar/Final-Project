# require 'nokogiri'
# require 'open-uri'
# require 'pry'

# class Scraper
	
# 	def scrape

# 		# url = "http://ruby-doc.org/stdlib-1.9.3/libdoc/open-uri/rdoc/OpenURI.html"
# 		url = "http://www.92y.org/Class/Gym-n-Swim-12-36-Months.aspx?utm_source=92Y_Feature&utm_medium=/Class/Gym-n-Swim-12-36-Months&utm_campaign=Uptown"

# 		doc = Nokogiri::HTML(open(url))
# binding.pry

# 		# doc.css("h1.module").text
# <<<<<<< HEAD

# 		# Location.new  	
# =======
# 		# Location.new  	

# 		@lesson = Lesson.new
# 		@lesson.name = doc.css("h1").text
# 		@lesson.save
# >>>>>>> scraper
# 	end
# end

# desc "scrape something"
# task :scrape => :environment do 
# 	Scraper.new.scrape
# end