# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#recipe
Recipe.destroy_all
Recipe.create(rid:4678983,rid_typ:'FAH',catid:'Sides',rid_desc:'Apple Dippers',satfat:"5g",alg_milk:"Y",alg_soy:'Y',ser_size:'7.5 oz. (213 g)',yld:'7.5 oz',batch_yld:'1',shelf_life:'3 Days',sel_prc:2.29,scan_code:'401046096253',
    ingredient_list:'Apples, Apples, Corn Syrup, High Fructose Corn Syrup, Nonfat milk, Fructose, modified corn starch, salt, sugar, potassium sorbate and sodium benzoate, cream solids (from milk), sodium phosphate, sodium citrate, xanthan gum, naturam and artificial flavor, milk, caramel color, vanillin, soy lecithin, yellow 6, red 40, Pineapple Juice')
Recipe.create(rid:2,rid_typ:'FAH',catid:"Sandwiches",rid_desc:'Hamburger',tfat:"15g",alg_milk:"Y")
Recipe.create(rid:3,rid_typ:'FAH',catid:"Sides",rid_desc:'Cheese Plate')
Recipe.create(rid:5413331,rid_typ:'FAH',catid:"Desserts",rid_desc:'Cherry Pie',ser_size:'4.6 oz. (130 g)')

#Recipeingredient
Recipeingredient.destroy_all
Recipeingredient.create(rid:4678983,rid_li:1,supc:'1577444',desc:'Apple Red Del XFCY Fresh 88SZ',prep_notes:'Wedge Cut',amount:'2,',uofm:'Oz Volume',cost:'$0.19')
Recipeingredient.create(rid:4678983,rid_li:2,supc:'5443532',desc:'Apple Granny Smith XFCY Fresh 88SZ',prep_notes:'Wedge Cut',amount:'2,',uofm:'Oz Volume',cost:'$0.20')
Recipeingredient.create(rid:4678983,rid_li:3,supc:'3127459',desc:'Topping Caramel PlatesCaper',prep_notes:'',amount:'2',uofm:'Oz Weight',cost:'$0.23')
Recipeingredient.create(rid:4678983,rid_li:4,supc:'4019077',desc:'Juice Pnapl Not frm Conc 100%',prep_notes:'',amount:'1.5',uofm:'Oz Weight',cost:'$0.06')
Recipeingredient.create(rid:4678983,rid_li:5,supc:'737867',desc:'10 oz Cup',prep_notes:'',amount:'1',uofm:'each',cost:'$0.04')
Recipeingredient.create(rid:4678983,rid_li:6,supc:'714569',desc:'10 oz Lid',prep_notes:'',amount:'1',uofm:'each',cost:'$0.02')
Recipeingredient.create(rid:4678983,rid_li:7,supc:'206940',desc:'3 oz Parfait Insert',prep_notes:'',amount:'1',uofm:'each',cost:'$0.02')
Recipeingredient.create(rid:2,rid_li:1,supc:'h1',desc:'Burger')
Recipeingredient.create(rid:2,rid_li:2,supc:'h2',desc:'Bun')
Recipeingredient.create(rid:2,rid_li:3,supc:'h3',desc:'Lettuce')
Recipeingredient.create(rid:2,rid_li:4,supc:'h4',desc:'Tomato')


#Recipeprocedure
Recipeprocedure.destroy_all
Recipeprocedure.create(rid:4678983,rid_proc:1,rid_proc_desc:"Place the caramel in the parfait insert")
Recipeprocedure.create(rid:4678983,rid_proc:2,rid_proc_desc:"Dip the apples into the pineapple juice")
Recipeprocedure.create(rid:4678983,rid_proc:3,rid_proc_desc:"Places the apples into the bottom of the cup")
Recipeprocedure.create(rid:4678983,rid_proc:4,rid_proc_desc:"Top with the insert cup and cover with lid")
Recipeprocedure.create(rid:4678983,rid_proc:5,rid_proc_desc:"Place label on cup")
Recipeprocedure.create(rid:2,rid_proc:1,rid_proc_desc:"Grill Hamburger to internal temperature of 160°F")
Recipeprocedure.create(rid:2,rid_proc:2,rid_proc_desc:"Perpare lettece and tomato")
Recipeprocedure.create(rid:2,rid_proc:3,rid_proc_desc:"Assemble on bun and server")


#App_config
Appconfig.destroy_all
Appconfig.create(pk:1,last_update:'11/1/17')


#Category
Category.destroy_all
Category.create(category_name:'All')
Category.create(category_name:'Desserts')
Category.create(category_name:'Salads')
Category.create(category_name:'Sandwiches')
Category.create(category_name:'Sides')



