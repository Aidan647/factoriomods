del_list = ezlib.recipe.get.list({category = "smelting"})
-- del_list2 = ezlib.recipe.get.list({})
-- del_list3 = ezlib.recipe.get.list({category = "smelting"})
-- del_list4 = ezlib.recipe.get.list({category = "smelting"})
-- del_list  = ezlib.tbl.add(del_list1,del_list2,del_list3,del_list4)
list_assemdler	= ezlib.tbl.remove(ezlib.recipe.get.list(), del_list)
list_furnace	= ezlib.recipe.get.list({category = "smelting"})
--list = {"water-mineralized"}