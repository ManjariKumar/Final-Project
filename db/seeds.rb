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
    owner: 3,
    image: "danchild_balletbasics.jpg"

  },
{ lesson_id:"Ballet_Bas",
    name: "Ballet Basics",
    description: "foundational ballet lessons for teens",
    weekday: "tuesday",
    min_age:12,
    max_age:18,
    institution_id: "92y_ues",
    category: "Dance, dancing",
    owner: 3,
    image: "danteen_ballet_stretch_lg.jpg"


  },
  { lesson_id:"Ballet_Adv",
    name: "Ballet Ballet_Fripointe",
    description: "Advanced ballet lessons for 10-12 yr olds",
    weekday: "Tuesday",
    min_age:4,
    max_age:6,
    institution_id: "92y_ues",
    category: "Dance, dancing",
    owner: 3,
    image: ""

  },
{ lesson_id:"Swimming_Bas",
    name: "Water Babies",
    description: "Basic introduction to water skills for babies",
    weekday: "Wednesday",
    min_age:1,
    max_age:2,
    institution_id: "Asp_Grn",
    category: "sports, swim, swimming",
    owner: 7,
    image: "first_swim_asp_grn.jpg"

  },
  { lesson_id:"Swimming_Bas",
    name: "Water Tots",
    description: "Basic introduction to water skills for toddlers",
    weekday: "Wednesday",
    min_age:3,
    max_age:4,
    institution_id: "Asp_Grn",
    category: "sports, swim, swimming",
    owner: 3,
    image: "swim_tots_asp_grn.jpg"

  },
  { lesson_id:"Soccer_Bas",
    name: "Junior Soccer",
    description: "Basic soccer skills for 5-6 yr olds",
    weekday: "Friday",
    min_age:5,
    max_age:6,
    institution_id: "Asp_Grn",
    category: "sports, soccer",
    owner: 7,
    image: "soccer_asp_grn.jpg"

  },
{ lesson_id:"Gym_Bas",
    name: "Tumbling Tots",
    description: "foundational gymnastic lessons for 2-3 yr olds",
    weekday: "Monday",
    min_age:2,
    max_age:3,
    institution_id: "Nyc_Elt",
    category: "sports, gym, gymnastics",
    owner: 5,
    image: "nyc_eg_soho_tumbl_tots"

  },
  { lesson_id:"Gymnastics_Itr",
    name: "Gym Stars",
    description: "Intermediate gymnastics lessons for 5-9 yr olds",
    weekday: "tuesday",
    min_age:5,
    max_age:9,
    institution_id: "Nyc_Elt",
    category: "sports, gym, gymnastics",
    owner: 5,
    image: "nyc_eg_soho_adv.jpg"

  },
{ lesson_id:"Ballet_1",
    name: "Pre Ballet Basics",
    description: "Foundational ballet lessons for 4-6 yr olds",
    weekday: "tuesday",
    min_age:3,
    max_age:4,
    institution_id: "Bae_ues",
    category: "Dance, dancing",
    owner: 3,
    image: "bae_preballet_resized2.jpg"


  },
  { lesson_id:"Iceskating_1",
    name: "Junior Ice Skating",
    description: "foundational ice skating lessons for 4-6 yr olds",
    weekday: "tuesday",
    min_age:4,
    max_age:6,
    institution_id: "Che_pie",
    category: "Ice skating, sports",
    owner: 3,
    image: "skyrink_che_pie.jpg"

  },

  { lesson_id:"Iceskating_1",
    name: "Preschool Ice Skating",
    description: "foundational ice skating lessons for 2-3yr olds",
    weekday: "tuesday",
    min_age:2,
    max_age:3,
    institution_id: "Che_pie",
    category: "Ice skating, sports",
    owner: 3,
    image: "IceSkating_che_pie_preschool.jpg"

  },
{ lesson_id:"Ballet_1",
    name: "Ballet Basics",
    description: "foundational ballet lessons for 4-6 yr olds",
    weekday: "tuesday",
    min_age:4,
    max_age:6,
    institution_id: "92y_ues",
    category: "Dance, dancing",
    owner: 3,
    image: ""

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
    inst_add1: "100 Avenue Of The Americas",
    inst_add2: "",
    inst_city:"New York",
    inst_state:"State",
    inst_zip: 10013,
    inst_url: "http://nycelite.com/",
    inst_phone:"212-334-3628"

  },
  { inst_id:"Nyc_Elt",
    inst_name: "Nyc Elite Gymnastics",
    inst_add1: "100 Avenue Of The Americas",
    inst_add2: "",
    inst_city:"New York",
    inst_state:"State",
    inst_zip: 10013,
    inst_url: "http://nycelite.com/",
    inst_phone:"212-334-3628"

  },
{ inst_id:"Che_pie",
    inst_name: "Chelsea Piers",
    inst_add1: "23rd Street & Hudson River Park",
    inst_add2: "",
    inst_city:"New York",
    inst_state:"State",
    inst_zip: 10011,
    inst_url: "http://www.chelseapiers.com/",
    inst_phone:"212.336.6666"

  }]