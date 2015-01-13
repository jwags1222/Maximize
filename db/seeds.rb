# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#later change this data from test data to default data (i.e. necessary data to run but not user entered)

Patient.create(firstname: "Ray", lastname: "Bedner", middlename: "Troy", cellphone: "4122224433", homephone: "4123345544", address: "107 Franklin Ln", city: "Castle Shannon", state: "Pa", zip: "15901", gender: "M", SSN: "333333333", member_id: "59993999299989991099", plan_id: 1, DOB: Date.new(1984, 5, 7))

patient1 = Patient.create(firstname: "Ben", lastname: "Johnson", middlename: "T.", cellphone: "4122124223", homephone: "4123311124", address: "7 Tide Rd", city: "Bethel Park", state: "Pa", zip: "15901", gender: "M", SSN: "333337773", member_id: "29991899999939992199", DOB: Date.new(1974, 5, 22))

#plan, measure, task and gap will not be created by a user.  But will be hard coded
Plan.create(plan_title: , insurance: , total_revenue: , revenue_increase: , last_revenue_increase: Date.new(2014, 1, 22), start_date: Date.new(2013, 5, 1)) 

Measure.create(insurer: , benchmark: , gap: , status: , qualifying_patients: , pcmh_network_key: , category: , explaination: )

Task.create(insurer: , plan_name: , description: , status: ) 

Gap.create(measure_name: , patient_id: , task_id: , measure_id: , payer_code_id: , open: ) 

#do all associations here