# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#recipe
Recipe.destroy_all
Recipe.create(rid:1,rid_typ:'FAH',rid_desc:'Apple Dippers')
Recipe.create(rid:2,rid_typ:'FAH',rid_desc:'Hamburger')
Recipe.create(rid:3,rid_typ:'FAH',rid_desc:'Cheese Plate')

