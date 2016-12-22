# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# will load all seed files in directory
Storeperm.destroy_all
Storeperm.create(storeid: '12', login_user: 'kfischer', pw: '1234')
Storeperm.create(storeid: '81', login_user: 'rgrayson', pw: '1234')
Storeperm.create(storeid: '71', login_user: 'rgrayson', pw: '1234')
Storeperm.create(storeid: '553', login_user: 'rgrayson', pw: '1234')
Storeperm.create(storeid: '137', login_user: 'Char', pw: '1234')
Storeperm.create(storeid: '45', login_user: 'Char', pw: '1234')
Storeperm.create(storeid: '489', login_user: 'Char', pw: '1234')
Storeperm.create(storeid: '561', login_user: 'parson', pw: '1234')

Mrktcstore.destroy_all
Mrktcstore.create(storeid: '12', storename: 'ABC Inoac', locncode: '053 SAND')
Mrktcstore.create(storeid: '81', storename: 'Aerotech', locncode: '004 BUTL')
Mrktcstore.create(storeid: '137', storename: 'Alcorn Main', locncode: '039 CHAR')
Mrktcstore.create(storeid: '45', storename: 'Alcorn North', locncode: '039 CHAR')
Mrktcstore.create(storeid: '489', storename: 'ALLEVARD SOGEFI USA', locncode: '039 CHAR')
Mrktcstore.create(storeid: '71', storename: 'Allied Machine', locncode: '017 WOOS')
Mrktcstore.create(storeid: '561', storename: 'American Showa', locncode: '043 CINN')
Mrktcstore.create(storeid: '553', storename: 'Arctic Cat', locncode: '041 MANS')

Cscorder.destroy_all
Cscorder.create(storeid: '137', prod_id: '216', mcode: 'B1', dte: '11/1/2016', dow: 'Tue',ordsts: '1')
Cscorder.create(storeid: '137', prod_id: '217', mcode: 'B2', dte: '11/3/2016', dow: 'Thu',ordsts: '1')
Cscorder.create(storeid: '137', prod_id: '218', mcode: 'B3', dte: '11/5/2016', dow: 'Sat',ordsts: '1')   

Cscorder.create(storeid: '45', prod_id: '216', mcode: 'B1', dte: '11/1/2016', dow: 'Tue',ordsts: '1')
Cscorder.create(storeid: '45', prod_id: '217', mcode: 'B2', dte: '11/3/2016', dow: 'Thu',ordsts: '1')
Cscorder.create(storeid: '45', prod_id: '218', mcode: 'B3', dte: '11/5/2016', dow: 'Sat',ordsts: '1')   

Cscorder.create(storeid: '489', prod_id: '216', mcode: 'B1', dte: '11/1/2016', dow: 'Tue',ordsts: '1')
Cscorder.create(storeid: '489', prod_id: '217', mcode: 'B2', dte: '11/3/2016', dow: 'Thu',ordsts: '1')
Cscorder.create(storeid: '489', prod_id: '218', mcode: 'B3', dte: '11/5/2016', dow: 'Sat',ordsts: '1')   

Cscorder.create(storeid: '81', prod_id: '216', mcode: 'B1', dte: '11/1/2016', dow: 'Tue',ordsts: '1')
Cscorder.create(storeid: '81', prod_id: '217', mcode: 'B2', dte: '11/3/2016', dow: 'Thu',ordsts: '1')
Cscorder.create(storeid: '81', prod_id: '218', mcode: 'B3', dte: '11/5/2016', dow: 'Sat',ordsts: '1')   

Cscorder.create(storeid: '71', prod_id: '216', mcode: 'B1', dte: '11/1/2016', dow: 'Tue',ordsts: '1')
Cscorder.create(storeid: '71', prod_id: '217', mcode: 'B2', dte: '11/3/2016', dow: 'Thu',ordsts: '1')
Cscorder.create(storeid: '71', prod_id: '218', mcode: 'B3', dte: '11/5/2016', dow: 'Sat',ordsts: '1')   

Cscorder.create(storeid: '561', prod_id: '216', mcode: 'B1', dte: '11/1/2016', dow: 'Tue',ordsts: '1')
Cscorder.create(storeid: '561', prod_id: '217', mcode: 'B2', dte: '11/3/2016', dow: 'Thu',ordsts: '1')
Cscorder.create(storeid: '561', prod_id: '218', mcode: 'B3', dte: '11/5/2016', dow: 'Sat',ordsts: '1')

Cscorder.create(storeid: '553', prod_id: '216', mcode: 'B1', dte: '11/1/2016', dow: 'Tue',ordsts: '1')
Cscorder.create(storeid: '553', prod_id: '217', mcode: 'B2', dte: '11/3/2016', dow: 'Thu',ordsts: '1')
Cscorder.create(storeid: '553', prod_id: '218', mcode: 'B3', dte: '11/5/2016', dow: 'Sat',ordsts: '1')


Cscorderli.destroy_all
#B1
Cscorderli.create(cscorder_id:'1', category:'BRD NAME PART', itemnmbr:'V01151', itemdesc:'Buffalo Wings', mrktc_only:'0',selprc:'3.00',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'1', category:'BRD NAME PART', itemnmbr:'V01227', itemdesc:'Hamburger-White Castle', mrktc_only:'0',selprc:'1.75',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'1', category:'CHEF CUIS', itemnmbr:'V01655', itemdesc:'Gourmet French Dip Sandwich ', mrktc_only:'0',selprc:'2.75',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'1', category:'KTCH CLASS', itemnmbr:'V02979', itemdesc:'Antipasto Cup', mrktc_only:'0',selprc:'1.75',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'1', category:'MARKET C', itemnmbr:'V05514', itemdesc:'Chicken Tenders', mrktc_only:'1',selprc:'3.99',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'1', category:'MARKET C', itemnmbr:'V06130', itemdesc:'Philly Steak & Cheese Sub', mrktc_only:'1',selprc:'4.29',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'1', category:'PASTRY', itemnmbr:'V02077', itemdesc:'Clov. Big Texas Cinn. Roll', mrktc_only:'0',selprc:'',uofm:'Ea',qtyord:0)

Cscorderli.create(cscorder_id:'4', category:'BRD NAME PART', itemnmbr:'V01151', itemdesc:'Buffalo Wings', mrktc_only:'0',selprc:'3.00',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'4', category:'BRD NAME PART', itemnmbr:'V01227', itemdesc:'Hamburger-White Castle', mrktc_only:'0',selprc:'1.75',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'4', category:'CHEF CUIS', itemnmbr:'V01655', itemdesc:'Gourmet French Dip Sandwich ', mrktc_only:'0',selprc:'2.75',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'4', category:'KTCH CLASS', itemnmbr:'V02979', itemdesc:'Antipasto Cup', mrktc_only:'0',selprc:'1.75',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'4', category:'MARKET C', itemnmbr:'V05514', itemdesc:'Chicken Tenders', mrktc_only:'1',selprc:'3.99',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'4', category:'MARKET C', itemnmbr:'V06130', itemdesc:'Philly Steak & Cheese Sub', mrktc_only:'1',selprc:'4.29',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'4', category:'PASTRY', itemnmbr:'V02077', itemdesc:'Clov. Big Texas Cinn. Roll', mrktc_only:'0',selprc:'',uofm:'Ea',qtyord:0)

Cscorderli.create(cscorder_id:'7', category:'BRD NAME PART', itemnmbr:'V01151', itemdesc:'Buffalo Wings', mrktc_only:'0',selprc:'3.00',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'7', category:'BRD NAME PART', itemnmbr:'V01227', itemdesc:'Hamburger-White Castle', mrktc_only:'0',selprc:'1.75',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'7', category:'CHEF CUIS', itemnmbr:'V01655', itemdesc:'Gourmet French Dip Sandwich ', mrktc_only:'0',selprc:'2.75',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'7', category:'KTCH CLASS', itemnmbr:'V02979', itemdesc:'Antipasto Cup', mrktc_only:'0',selprc:'1.75',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'7', category:'MARKET C', itemnmbr:'V05514', itemdesc:'Chicken Tenders', mrktc_only:'1',selprc:'3.99',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'7', category:'MARKET C', itemnmbr:'V06130', itemdesc:'Philly Steak & Cheese Sub', mrktc_only:'1',selprc:'4.29',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'7', category:'PASTRY', itemnmbr:'V02077', itemdesc:'Clov. Big Texas Cinn. Roll', mrktc_only:'0',selprc:'',uofm:'Ea',qtyord:0)

Cscorderli.create(cscorder_id:'10', category:'BRD NAME PART', itemnmbr:'V01151', itemdesc:'Buffalo Wings', mrktc_only:'0',selprc:'3.00',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'10', category:'BRD NAME PART', itemnmbr:'V01227', itemdesc:'Hamburger-White Castle', mrktc_only:'0',selprc:'1.75',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'10', category:'CHEF CUIS', itemnmbr:'V01655', itemdesc:'Gourmet French Dip Sandwich ', mrktc_only:'0',selprc:'2.75',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'10', category:'KTCH CLASS', itemnmbr:'V02979', itemdesc:'Antipasto Cup', mrktc_only:'0',selprc:'1.75',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'10', category:'MARKET C', itemnmbr:'V05514', itemdesc:'Chicken Tenders', mrktc_only:'1',selprc:'3.99',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'10', category:'MARKET C', itemnmbr:'V06130', itemdesc:'Philly Steak & Cheese Sub', mrktc_only:'1',selprc:'4.29',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'10', category:'PASTRY', itemnmbr:'V02077', itemdesc:'Clov. Big Texas Cinn. Roll', mrktc_only:'0',selprc:'',uofm:'Ea',qtyord:0)

#B2
Cscorderli.create(cscorder_id:'2', category:'BRD NAME PART', itemnmbr:'V01204', itemdesc:'A.1. Beef Steak Sand-Pierre', mrktc_only:'0',selprc:'3.00',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'2', category:'GOOD 4 U', itemnmbr:'V01599', itemdesc:'Honey of a Ham Sub', mrktc_only:'0',selprc:'2.25',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'2', category:'KTCH CLASS', itemnmbr:'V03407', itemdesc:'Breakfast Classic', mrktc_only:'0',selprc:'1.75',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'2', category:'KTCH CLASS', itemnmbr:'V01324', itemdesc:'Fish Sandwich', mrktc_only:'0',selprc:'1.50',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'2', category:'MARKET C', itemnmbr:'V03803', itemdesc:'Bistro Ham & Cheese', mrktc_only:'1',selprc:'4.29',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'2', category:'MARKET C', itemnmbr:'V04436', itemdesc:'Cuban Wrap', mrktc_only:'1',selprc:'3.79',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'2', category:'PASTRY', itemnmbr:'V04230', itemdesc:'Gingerbread Cookies', mrktc_only:'0',selprc:'',uofm:'Ea',qtyord:0)

Cscorderli.create(cscorder_id:'5', category:'BRD NAME PART', itemnmbr:'V01204', itemdesc:'A.1. Beef Steak Sand-Pierre', mrktc_only:'0',selprc:'3.00',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'5', category:'GOOD 4 U', itemnmbr:'V01599', itemdesc:'Honey of a Ham Sub', mrktc_only:'0',selprc:'2.25',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'5', category:'KTCH CLASS', itemnmbr:'V03407', itemdesc:'Breakfast Classic', mrktc_only:'0',selprc:'1.75',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'5', category:'KTCH CLASS', itemnmbr:'V01324', itemdesc:'Fish Sandwich', mrktc_only:'0',selprc:'1.50',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'5', category:'MARKET C', itemnmbr:'V03803', itemdesc:'Bistro Ham & Cheese', mrktc_only:'1',selprc:'4.29',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'5', category:'MARKET C', itemnmbr:'V04436', itemdesc:'Cuban Wrap', mrktc_only:'1',selprc:'3.79',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'5', category:'PASTRY', itemnmbr:'V04230', itemdesc:'Gingerbread Cookies', mrktc_only:'0',selprc:'',uofm:'Ea',qtyord:0)

Cscorderli.create(cscorder_id:'8', category:'BRD NAME PART', itemnmbr:'V01204', itemdesc:'A.1. Beef Steak Sand-Pierre', mrktc_only:'0',selprc:'3.00',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'8', category:'GOOD 4 U', itemnmbr:'V01599', itemdesc:'Honey of a Ham Sub', mrktc_only:'0',selprc:'2.25',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'8', category:'KTCH CLASS', itemnmbr:'V03407', itemdesc:'Breakfast Classic', mrktc_only:'0',selprc:'1.75',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'8', category:'KTCH CLASS', itemnmbr:'V01324', itemdesc:'Fish Sandwich', mrktc_only:'0',selprc:'1.50',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'8', category:'MARKET C', itemnmbr:'V03803', itemdesc:'Bistro Ham & Cheese', mrktc_only:'1',selprc:'4.29',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'8', category:'MARKET C', itemnmbr:'V04436', itemdesc:'Cuban Wrap', mrktc_only:'1',selprc:'3.79',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'8', category:'PASTRY', itemnmbr:'V04230', itemdesc:'Gingerbread Cookies', mrktc_only:'0',selprc:'',uofm:'Ea',qtyord:0)

Cscorderli.create(cscorder_id:'11', category:'BRD NAME PART', itemnmbr:'V01204', itemdesc:'A.1. Beef Steak Sand-Pierre', mrktc_only:'0',selprc:'3.00',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'11', category:'GOOD 4 U', itemnmbr:'V01599', itemdesc:'Honey of a Ham Sub', mrktc_only:'0',selprc:'2.25',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'11', category:'KTCH CLASS', itemnmbr:'V03407', itemdesc:'Breakfast Classic', mrktc_only:'0',selprc:'1.75',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'11', category:'KTCH CLASS', itemnmbr:'V01324', itemdesc:'Fish Sandwich', mrktc_only:'0',selprc:'1.50',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'11', category:'MARKET C', itemnmbr:'V03803', itemdesc:'Bistro Ham & Cheese', mrktc_only:'1',selprc:'4.29',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'11', category:'MARKET C', itemnmbr:'V04436', itemdesc:'Cuban Wrap', mrktc_only:'1',selprc:'3.79',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'11', category:'PASTRY', itemnmbr:'V04230', itemdesc:'Gingerbread Cookies', mrktc_only:'0',selprc:'',uofm:'Ea',qtyord:0)

#B3
Cscorderli.create(cscorder_id:'3', category:'BRD NAME PART', itemnmbr:'V04507', itemdesc:'Cobb Salad', mrktc_only:'0',selprc:'3.50',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'3', category:'GOOD 4 U', itemnmbr:'V01612', itemdesc:'Multi Grain Roast Beef Stacker', mrktc_only:'0',selprc:'2.25',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'3', category:'KTCH CLASS', itemnmbr:'V01328', itemdesc:'Cheeseburger', mrktc_only:'0',selprc:'1.75',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'3', category:'KTCH CLASS', itemnmbr:'V01415', itemdesc:'Meatloaf Sandwich', mrktc_only:'0',selprc:'2.25',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'3', category:'MARKET C', itemnmbr:'V04511', itemdesc:'Large Chicken Caesar Salad', mrktc_only:'1',selprc:'4.95',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'3', category:'MARKET C', itemnmbr:'V04438', itemdesc:'Thai Chicken Wrap', mrktc_only:'1',selprc:'3.79',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'3', category:'PASTRY', itemnmbr:'V02073', itemdesc:'Clov. Big Bear Claw', mrktc_only:'0',selprc:'',uofm:'Ea',qtyord:0)

Cscorderli.create(cscorder_id:'6', category:'BRD NAME PART', itemnmbr:'V04507', itemdesc:'Cobb Salad', mrktc_only:'0',selprc:'3.50',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'6', category:'GOOD 4 U', itemnmbr:'V01612', itemdesc:'Multi Grain Roast Beef Stacker', mrktc_only:'0',selprc:'2.25',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'6', category:'KTCH CLASS', itemnmbr:'V01328', itemdesc:'Cheeseburger', mrktc_only:'0',selprc:'1.75',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'6', category:'KTCH CLASS', itemnmbr:'V01415', itemdesc:'Meatloaf Sandwich', mrktc_only:'0',selprc:'2.25',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'6', category:'MARKET C', itemnmbr:'V04511', itemdesc:'Large Chicken Caesar Salad', mrktc_only:'1',selprc:'4.95',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'6', category:'MARKET C', itemnmbr:'V04438', itemdesc:'Thai Chicken Wrap', mrktc_only:'1',selprc:'3.79',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'6', category:'PASTRY', itemnmbr:'V02073', itemdesc:'Clov. Big Bear Claw', mrktc_only:'0',selprc:'',uofm:'Ea',qtyord:0)

Cscorderli.create(cscorder_id:'9', category:'BRD NAME PART', itemnmbr:'V04507', itemdesc:'Cobb Salad', mrktc_only:'0',selprc:'3.50',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'9', category:'GOOD 4 U', itemnmbr:'V01612', itemdesc:'Multi Grain Roast Beef Stacker', mrktc_only:'0',selprc:'2.25',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'9', category:'KTCH CLASS', itemnmbr:'V01328', itemdesc:'Cheeseburger', mrktc_only:'0',selprc:'1.75',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'9', category:'KTCH CLASS', itemnmbr:'V01415', itemdesc:'Meatloaf Sandwich', mrktc_only:'0',selprc:'2.25',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'9', category:'MARKET C', itemnmbr:'V04511', itemdesc:'Large Chicken Caesar Salad', mrktc_only:'1',selprc:'4.95',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'9', category:'MARKET C', itemnmbr:'V04438', itemdesc:'Thai Chicken Wrap', mrktc_only:'1',selprc:'3.79',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'9', category:'PASTRY', itemnmbr:'V02073', itemdesc:'Clov. Big Bear Claw', mrktc_only:'0',selprc:'',uofm:'Ea',qtyord:0)

Cscorderli.create(cscorder_id:'12', category:'BRD NAME PART', itemnmbr:'V04507', itemdesc:'Cobb Salad', mrktc_only:'0',selprc:'3.50',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'12', category:'GOOD 4 U', itemnmbr:'V01612', itemdesc:'Multi Grain Roast Beef Stacker', mrktc_only:'0',selprc:'2.25',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'12', category:'KTCH CLASS', itemnmbr:'V01328', itemdesc:'Cheeseburger', mrktc_only:'0',selprc:'1.75',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'12', category:'KTCH CLASS', itemnmbr:'V01415', itemdesc:'Meatloaf Sandwich', mrktc_only:'0',selprc:'2.25',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'12', category:'MARKET C', itemnmbr:'V04511', itemdesc:'Large Chicken Caesar Salad', mrktc_only:'1',selprc:'4.95',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'12', category:'MARKET C', itemnmbr:'V04438', itemdesc:'Thai Chicken Wrap', mrktc_only:'1',selprc:'3.79',uofm:'Ea',qtyord:0)
Cscorderli.create(cscorder_id:'12', category:'PASTRY', itemnmbr:'V02073', itemdesc:'Clov. Big Bear Claw', mrktc_only:'0',selprc:'',uofm:'Ea',qtyord:0)