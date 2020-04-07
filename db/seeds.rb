# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jim = SalesPerson.create(name: "Jim", significant_other: "Pam", catch_phrase: "I love Pam" )
dwight = SalesPerson.create(name: "Dwight", significant_other: "Angela", catch_phrase: "Bears Beets Battlestar Galactica")
michael = SalesPerson.create(name: "Michael", significant_other: "Jan", catch_phrase: "...That's what she said.")

chine = Customer.create(name: "Chine")
ann = Customer.create(name: "Ann")
paul = Customer.create(name: "Paul")
shannon = Customer.create(name: "Shannon")

order1 = Order.create(customer_id: chine.id, sales_person_id: jim.id, price_per_ream: 15, number_of_reams: 2, paper_type: "Glossy")
order2 = Order.create(customer_id: ann.id, sales_person_id: jim.id, price_per_ream: 20, number_of_reams: 5, paper_type: "Regular, boring, paper")
order3 = Order.create(customer_id: paul.id, sales_person_id: michael.id, price_per_ream: 30, number_of_reams: 100, paper_type: "Recycled")
order4 = Order.create(customer_id: chine.id, sales_person_id: dwight.id, price_per_ream: 25, number_of_reams: 30, paper_type: "Legal")

