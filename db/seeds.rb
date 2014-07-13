# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Adding a Whole bunch of classes"
Lesson.create [
  { lesson_id:"Ballet_Bas",
    name: "Ballet Basics",
    description: "foundational ballet lessons for 4-6 yr olds",
    weekday: "tuesday",
    min_age:4,
    max_age:6,
    institution_id: "92y_ues",
    category: "Dance, dancing",
    owner: 3

  },
{ lesson_id:"Ballet_Bas",
    name: "Ballet Basics",
    description: "foundational ballet lessons for 7-9 yr olds",
    weekday: "tuesday",
    min_age:7,
    max_age:9,
    institution_id: "92y_ues",
    category: "Dance, dancing",
    owner: 3

  },
  { lesson_id:"Ballet_Adv",
    name: "Ballet Ballet_Fripointe",
    description: "Advanced ballet lessons for 10-12 yr olds",
    weekday: "Tuesday",
    min_age:4,
    max_age:6,
    institution_id: "92y_ues",
    category: "Dance, dancing",
    owner: 3

  },
{ lesson_id:"Swimming_Bas",
    name: "Water Tots",
    description: "Basic introduction to water skills for 3-4 yr olds ",
    weekday: "Wednesday",
    min_age:3,
    max_age:4,
    institution_id: "Asp_Grn",
    category: "sports, swim, swimming",
    owner: 7

  },
  { lesson_id:"Swimming_Bas",
    name: "Water Sprites",
    description: "Basic water skills for 4-5 yr olds",
    weekday: "Friday",
    min_age:4,
    max_age:5,
    institution_id: "Asp_Grn",
    category: "sports, swim, swimming",
    owner: 7

  },
{ lesson_id:"Gym_Bas",
    name: "Tumbling Tots",
    description: "foundational gymnastic lessons for 2-3 yr olds",
    weekday: "Monday",
    min_age:2,
    max_age:3,
    institution_id: "Nyc_Elt",
    category: "sports, gym, gymnastics",
    owner: 5

  },
  { lesson_id:"Gymnastics_Itr",
    name: "Gym Stars",
    description: "Intermediate gymnastics lessons for 6-8 yr olds",
    weekday: "tuesday",
    min_age:6,
    max_age:8,
    institution_id: "Nyc_Elt",
    category: "sports, gym, gymnastics",
    owner: 5

  },
{ lesson_id:"Ballet_1",
    name: "Ballet Basics",
    description: "foundational ballet lessons for 4-6 yr olds",
    weekday: "tuesday",
    min_age:4,
    max_age:6,
    institution_id: "92y_ues",
    category: "Dance, dancing",
    owner: 3


  },
  { lesson_id:"Ballet_1",
    name: "Ballet Basics",
    description: "foundational ballet lessons for 4-6 yr olds",
    weekday: "tuesday",
    min_age:4,
    max_age:6,
    institution_id: "92y_ues",
    category: "Dance, dancing",
    owner: 3

  },
{ lesson_id:"Ballet_1",
    name: "Ballet Basics",
    description: "foundational ballet lessons for 4-6 yr olds",
    weekday: "tuesday",
    min_age:4,
    max_age:6,
    institution_id: "92y_ues",
    category: "Dance, dancing",
    owner: 3

  }]


  puts "Adding a Whole bunch of institutions"
Institution.create [
  { inst_id:"92y_ues",
    inst_name: "92nd Street Y",
    inst_add1: "1395 Lexington Avenue",
    inst_add2: "",
    inst_city:"New York",
    inst_state:"State",
    inst_zip: 10128,
    inst_url: "http://www.92y.org/",
    inst_phone:"212.415.5500"

  },
  { inst_id:"Asp_Grn",
    inst_name: "Asphalt Green",
    inst_add1: "555 East 90th Street",
    inst_add2: "",
    inst_city:"New York",
    inst_state:"State",
    inst_zip: 10128,
    inst_url: "http://www.asphaltgreen.org/",
    inst_phone:"212.369.8890"

  },
  { inst_id:"Nyc_Elt",
    inst_name: "Nyc Elite Gymnastics",
    inst_add1: "421 East 91st Street",
    inst_add2: "",
    inst_city:"New York",
    inst_state:"State",
    inst_zip: 10128,
    inst_url: "http://nycelite.com/",
    inst_phone:"212.289.8737"

  }]