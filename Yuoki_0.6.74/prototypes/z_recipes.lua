
--automatically generated file | fMT-Export (c)YT v0.04-216Mrz03
--export-date: 2017-Feb-14

data:extend({

	-- 
	{
	  type = "recipe",
	  name = "y_signal_pole_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 1.50,
	  ingredients = {
		{ type = "item", name = "y_structure_electric" , amount = 1.0, },
		{ type = "item", name = "iron-stick" , amount = 12.0, },
		{ type = "item", name = "y-conductive-coil-1" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "y_signal_pole", amount = 1.0, },
	  },
	  main_product = "y_signal_pole",
	   icon_size = 32, icon =  "__Yuoki__/graphics/entity/signal_pole_icon.png",
	  order = "h", group = "yuoki-energy", subgroup = "y-electric",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_basement_factory_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 5.00,
	  ingredients = {
		{ type = "item", name = "y_structure_element" , amount = 10.0, },
		{ type = "item", name = "y-basic-t2-mf" , amount = 4.0, },
		{ type = "item", name = "steel-plate" , amount = 12.0, },
		{ type = "item", name = "stone-brick" , amount = 24.0, },
	  },
	  results = {
		{ type = "item", name = "y_basement_factory", amount = 1.0, },
		{ type = "item", name = "y_rwtechsign", amount = 2.0, },
	  },
	  main_product = "y_basement_factory",
	   icon_size = 32, icon =  "__Yuoki__/graphics/entity/base_factory_icon.png",
	  order = "a10", group = "yuoki", subgroup = "y_line1b",
	},

	-- 
	{
	  type = "recipe",
	  name = "y-orange-stuff_recipe",
	  category = "smelting", -- all furnace stuff
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "y-richdust" , amount = 3.0, },
	  },
	  results = {
		{ type = "item", name = "y-orange-stuff", amount = 2.0, },
	  },
	  main_product = "y-orange-stuff",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/orange-stuff.png",
	  order = "m-refined-x2", group = "yuoki", subgroup = "yuoki-formpress",
	},

	-- 
	{
	  type = "recipe",
	  name = "y-conductive-wire-1_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "y-orange-stuff" , amount = 1.0, },
		{ type = "item", name = "copper-plate" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "y-conductive-wire-1", amount = 4.0, },
	  },
	  main_product = "y-conductive-wire-1",
	   icon_size = 32, icon =  "__Yuoki__/graphics/gfx/wire_1.png",
	  order = "pe6", group = "yuoki", subgroup = "y_parts_e",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_structure_electric_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 4.00,
	  ingredients = {
		{ type = "item", name = "y_structure_element" , amount = 2.0, },
		{ type = "item", name = "y-conductive-wire-1" , amount = 4.0, },
		{ type = "item", name = "plastic-bar" , amount = 2.0, },
	  },
	  results = {
		{ type = "item", name = "y_structure_electric", amount = 2.0, },
	  },
	  main_product = "y_structure_electric",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/caseing-n4wCable.png",
	  order = "p-g2a", group = "yuoki", subgroup = "y-parts",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_water_mix_recipe",
	  category = "yuoki-watergen-recipe", -- 
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "fluid", name = "water" , amount = 3000, },
		{ type = "item", name = "y-richdust" , amount = 9.0, },
	  },
	  results = {
		{ type = "fluid", name = "y-mechanical-force", amount = 300, temperature = 320,},
	  },
	  main_product = "y-mechanical-force",
	  -- icon_size = 32, icon =  "__Yuoki__/graphics/icons/liquid_air_i32.png",
	  order = "0", group = "yuoki_liquids", subgroup = "y-fluid",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_tile_slagbricks_recipe",
	  category = "yuoki-formpress-recipe", -- 
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "y_slag_brick" , amount = 2.0, },
		{ type = "item", name = "y_slag_granulate" , amount = 4.0, },
	  },
	  results = {
		{ type = "item", name = "y_tile_slagbricks", amount = 4.0, },
	  },
	  main_product = "y_tile_slagbricks",
	   icon_size = 32, icon =  "__Yuoki__/graphics/entity/path_tiles/bricks_3.png",
	  order = "c", group = "yuoki-energy", subgroup = "y_tiles",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_tile_slagpattern_recipe",
	  category = "yuoki-formpress-recipe", -- 
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "y_slag_brick" , amount = 3.0, },
	  },
	  results = {
		{ type = "item", name = "y_tile_slagpattern", amount = 2.0, },
	  },
	  main_product = "y_tile_slagpattern",
	   icon_size = 32, icon =  "__Yuoki__/graphics/entity/path_tiles/muster_2.png",
	  order = "b", group = "yuoki-energy", subgroup = "y_tiles",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_tile_slagfilled_recipe",
	  category = "yuoki-formpress-recipe", -- 
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "y-slag" , amount = 4.0, },
	  },
	  results = {
		{ type = "item", name = "y_tile_slagfilled", amount = 2.0, },
	  },
	  main_product = "y_tile_slagfilled",
	   icon_size = 32, icon =  "__Yuoki__/graphics/entity/path_tiles/pslag_icon.png",
	  order = "a", group = "yuoki-energy", subgroup = "y_tiles",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_slag_brick_burn_recipe",
	  category = "smelting", -- all furnace stuff
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "y_slag_brick" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "stone-brick", amount = 1.0, },
	  },
	  main_product = "stone-brick",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/slag_brick2stone.png",
	  order = "m", group = "yuoki", subgroup = "yuoki-formpress",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_slag_brick_recipe",
	  category = "yuoki-formpress-recipe", -- 
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "y_slag_granulate" , amount = 5.0, },
	  },
	  results = {
		{ type = "item", name = "y_slag_brick", amount = 1.0, },
	  },
	  main_product = "y_slag_brick",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/slag_brick.png",
	  order = "l", group = "yuoki", subgroup = "y_line4",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_slag_granulate_recipe",
	  category = "y-crushing-recipe", -- 
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "y-slag" , amount = 2.0, },
	  },
	  results = {
		{ type = "item", name = "y_slag_granulate", amount = 8.0, },
	  },
	  main_product = "y_slag_granulate",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/dust_slag.png",
	  order = "k", group = "yuoki", subgroup = "y_line3",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_hps_steel_recipe",
	  category = "yuoki_smelter_recipe", -- 
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "fluid", name = "water" , amount = 100, },
		{ type = "item", name = "y_block_heat" , amount = 1.0, },
		{ type = "item", name = "y-pure-iron" , amount = 14.0, },
	  },
	  results = {
		{ type = "item", name = "steel-plate", amount = 6.0, },
		{ type = "item", name = "y_block_cold", amount = 1.0, },
		{ type = "item", name = "y-slag", amount = 8.0, },
	  },
	  main_product = "steel-plate",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/stahl_recipe.png",
	  order = "0", group = "yuoki", subgroup = "yuoki-formpress",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_hps_purecopper_recipe",
	  category = "yuoki_smelter_recipe", -- 
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "y_block_heat" , amount = 1.0, },
		{ type = "fluid", name = "water" , amount = 100, },
		{ type = "item", name = "y-pure-copper" , amount = 9.0, },
	  },
	  results = {
		{ type = "item", name = "y_block_cold", amount = 1.0, },
		{ type = "item", name = "copper-plate", amount = 18.0, },
		{ type = "item", name = "y-slag", amount = 4.0, },
	  },
	  main_product = "y_block_cold",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/copper_recipe.png",
	  order = "0", group = "yuoki", subgroup = "yuoki-formpress",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_hps_pureiron_recipe",
	  category = "yuoki_smelter_recipe", -- 
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "fluid", name = "water" , amount = 100, },
		{ type = "item", name = "y-pure-iron" , amount = 9.0, },
		{ type = "item", name = "y_block_heat" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "y_block_cold", amount = 1.0, },
		{ type = "item", name = "y-slag", amount = 4.0, },
		{ type = "item", name = "iron-plate", amount = 18.0, },
	  },
	  main_product = "y_block_cold",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/plates_recipe.png",
	  order = "0", group = "yuoki", subgroup = "yuoki-formpress",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_block_heat_recipe",
	  category = "yuoki_charger_recipe", -- 
	  enabled = "true",
	  energy_required = 5.00,
	  ingredients = {
		{ type = "item", name = "y_block_cold" , amount = 10.0, },
		{ type = "item", name = "y-richdust" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "y_block_heat", amount = 10.0, },
	  },
	  main_product = "y_block_heat",
	   icon_size = 32, icon =  "__Yuoki__/graphics/entity/block_heat_icon.png",
	  order = "t", group = "yuoki", subgroup = "y_parts_e",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_block_cold_recipe",
	  category = "yuoki-formpress-recipe", -- 
	  enabled = "true",
	  energy_required = 4.00,
	  ingredients = {
		{ type = "item", name = "y-raw-fuelnium" , amount = 2.0, },
		{ type = "item", name = "y_structure_element" , amount = 6.0, },
		{ type = "item", name = "y-richdust" , amount = 3.0, },
	  },
	  results = {
		{ type = "item", name = "y_block_cold", amount = 1.0, },
	  },
	  main_product = "y_block_cold",
	   icon_size = 32, icon =  "__Yuoki__/graphics/entity/block_cold_icon.png",
	  order = "s", group = "yuoki", subgroup = "y_parts_e",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_smelter_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 5.00,
	  ingredients = {
		{ type = "item", name = "y-basic-t2-mf" , amount = 2.0, },
		{ type = "item", name = "y_rwtechsign" , amount = 300.0, },
		{ type = "item", name = "y_structure_vessel" , amount = 4.0, },
		{ type = "item", name = "y-chip-2" , amount = 2.0, },
	  },
	  results = {
		{ type = "item", name = "y_smelter", amount = 1.0, },
	  },
	  main_product = "y_smelter",
	   icon_size = 32, icon =  "__Yuoki__/graphics/entity/smelter_icon.png",
	  order = "t", group = "yuoki", subgroup = "y_line1b",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_charger_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 5.00,
	  ingredients = {
		{ type = "item", name = "y-basic-t1-mf" , amount = 1.0, },
		{ type = "item", name = "y_crystal2_combined" , amount = 75.0, },
		{ type = "item", name = "y_structure_vessel" , amount = 8.0, },
		{ type = "item", name = "y_gauge" , amount = 8.0, },
	  },
	  results = {
		{ type = "item", name = "y_charger", amount = 1.0, },
	  },
	  main_product = "y_charger",
	   icon_size = 32, icon =  "__Yuoki__/graphics/entity/charger_icon.png",
	  order = "s", group = "yuoki", subgroup = "y_line1b",
	},

	-- 
	{
	  type = "recipe",
	  name = "ypfw_trader_sign_recipe",
	  category = "yuoki_trader_ultimate", -- Trader-Ultimates
	  enabled = "true",
	  energy_required = 30.00,
	  ingredients = {
	  },
	  results = {
		{ type = "item", name = "ypfw_trader_sign", amount = 1.0, },
	  },
	  main_product = "ypfw_trader_sign",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/trader_sign.png",
	  order = "a", group = "yuoki", subgroup = "y-stargate-4",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_greensign_ulti-recipe",
	  category = "yuoki_green_ultimate", -- Green-Ultimates
	  enabled = "true",
	  energy_required = 30.00,
	  ingredients = {
	  },
	  results = {
		{ type = "item", name = "y_greensign", amount = 1.0, },
	  },
	  main_product = "y_greensign",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/green_sign.png",
	  order = "d1", group = "yuoki-energy", subgroup = "y_ultimate_products",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_exchange_b1_recipe",
	  category = "yuoki-stargate-recipe", -- stargate-trades
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "y_greensign" , amount = 200.0, },
	  },
	  results = {
		{ type = "item", name = "y-fame", amount = 1.0, },
	  },
	  main_product = "y-fame",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/green_sign_retrade.png",
	  order = "b1", group = "yuoki-atomics", subgroup = "y-stargate-f",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_exchange_b4_recipe",
	  category = "yuoki-stargate-recipe", -- stargate-trades
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "ye_science_blue" , amount = 100.0, },
	  },
	  results = {
		{ type = "item", name = "y-fame", amount = 1.0, },
	  },
	  main_product = "y-fame",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/tech02_retrade.png",
	  order = "b4", group = "yuoki-atomics", subgroup = "y-stargate-f",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_exchange_b3_recipe",
	  category = "yuoki-stargate-recipe", -- stargate-trades
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "y_rwtechsign" , amount = 2000.0, },
	  },
	  results = {
		{ type = "item", name = "y-fame", amount = 1.0, },
	  },
	  main_product = "y-fame",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/tech-sign_retrade.png",
	  order = "b3", group = "yuoki-atomics", subgroup = "y-stargate-f",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_exchange_b2_recipe",
	  category = "yuoki-stargate-recipe", -- stargate-trades
	  enabled = "true",
	  energy_required = 1.00,
	  ingredients = {
		{ type = "item", name = "ypfw_trader_sign" , amount = 1000.0, },
	  },
	  results = {
		{ type = "item", name = "y-fame", amount = 1.0, },
	  },
	  main_product = "y-fame",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/trader_sign_retrade.png",
	  order = "b2", group = "yuoki-atomics", subgroup = "y-stargate-f",
	},

	--[[ 
	{
	  type = "recipe",
	  name = "yi_slayerfame_recipe",
	  category = "yuoki-stargate-recipe", -- stargate-trades
	  enabled = "true",
	  energy_required = 5.00,
	  ingredients = {
		{ type = "item", name = "alien-artifact" , amount = 500.0, },
	  },
	  results = {
		{ type = "item", name = "y-fame", amount = 1.0, },
	  },
	  main_product = "y-fame",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/fame-icon.png",
	  order = "a", group = "yuoki-atomics", subgroup = "y-stargate-f",
	},
	]]
	-- 
	{
	  type = "recipe",
	  name = "yi_construction-robot_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 4.00,
	  ingredients = {
		{ type = "item", name = "y-infused-uca2" , amount = 1.0, },
		{ type = "item", name = "y_structure_element" , amount = 3.0, },
		{ type = "item", name = "construction-robot" , amount = 1.0, },
		{ type = "item", name = "yi_magnetron" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "yi_construction-robot", amount = 1.0, },
		{ type = "item", name = "ypfw_trader_sign", amount = 1.0, },
	  },
	  main_product = "yi_construction-robot",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/rob_con_icon.png",
	  order = "K2", group = "yuoki", subgroup = "y-tools",
	},

	-- 
	{
	  type = "recipe",
	  name = "yi_logistic-robot_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 4.00,
	  ingredients = {
		{ type = "item", name = "y-infused-uca2" , amount = 1.0, },
		{ type = "item", name = "y_structure_element" , amount = 3.0, },
		{ type = "item", name = "logistic-robot" , amount = 1.0, },
		{ type = "item", name = "yi_magnetron" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "yi_logistic-robot", amount = 1.0, },
		{ type = "item", name = "ypfw_trader_sign", amount = 1.0, },
	  },
	  main_product = "yi_logistic-robot",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/rob_log_icon.png",
	  order = "K1", group = "yuoki", subgroup = "y-tools",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_gauge_analog_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "y_structure_vessel" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "y_gauge", amount = 1.0, },
	  },
	  main_product = "y_gauge",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/gauge.png",
	  order = "0", group = "yuoki_liquids", subgroup = "y_refine_parts",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_flowcheck_10_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "y_gauge" , amount = 1.0, },
		{ type = "item", name = "y_structure_vessel" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "y_flowcheck_10", amount = 1.0, },
	  },
	  main_product = "y_flowcheck_10",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/flow_indicator_icon.png",
	  order = "0", group = "yuoki_liquids", subgroup = "y_refine_parts",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_quantrinum_infusion_recipe",
	  category = "yuoki-alien-recipe", -- infuser ?
	  enabled = "true",
	  energy_required = 60.00,
	  ingredients = {
		{ type = "item", name = "y-quantrinum" , amount = 1.0, },
		{ type = "item", name = "y-crystal-cnd" , amount = 1.0, },
		{ type = "item", name = "y-unicomp-a2" , amount = 5.0, },
	  },
	  results = {
		{ type = "item", name = "y_quantrinum_infused", amount = 1.0, },
		{ type = "item", name = "ye_science_blue", amount = 1.0, },
	  },
	  main_product = "y_quantrinum_infused",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/charged_quantrinum_icon.png",
	  order = "0", group = "vanilla", subgroup = "y-tech",
	},

	-- for recipes that uses research
	{
	  type = "recipe",
	  name = "y_data_crystal_recipe",
	  category = "yuoki-wonder-recipe", -- 
	  enabled = "true",
	  energy_required = 8.00,
	  ingredients = {
		{ type = "item", name = "y-crystal2" , amount = 20.0, },
		{ type = "item", name = "science-pack-2" , amount = 5.0, },
	  },
	  results = {
		{ type = "item", name = "y_crystal2_combined", amount = 1.0, },
	  },
	  main_product = "y_crystal2_combined",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/blue_style.png",
	  order = "0", group = "vanilla", subgroup = "y-tech",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_ft_recipe",
	  category = "chemistry", -- 
	  enabled = "true",
	  energy_required = 5.00,
	  ingredients = {
		{ type = "fluid", name = "y_syngas_raw" , amount = 150, },
		{ type = "item", name = "y_catalyst_ft" , amount = 1.0, },
	  },
	  results = {
		{ type = "fluid", name = "light-oil", amount = 10, },
		{ type = "fluid", name = "petroleum-gas", amount = 20, },
		{ type = "item", name = "y_usedcatalyst", amount = 1.0, },
	  },
	  main_product = "light-oil",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/ctl_ft_32.png",
	  order = "c2", group = "yuoki_liquids", subgroup = "y-fluid",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_rawsyngas2_recipe",
	  category = "chemistry", -- 
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "y_organic_dust" , amount = 4.0, },
	  },
	  results = {
		{ type = "fluid", name = "y_syngas_raw", amount = 10, },
	  },
	  main_product = "y_syngas_raw",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/obs/h2o_c_icon.png",
	  order = "c4", group = "yuoki_liquids", subgroup = "y-fluid",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_regcatft_recipe",
	  category = "chemistry", -- 
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "y-unicomp-a2" , amount = 1.0, },
		{ type = "item", name = "y_usedcatalyst" , amount = 10.0, },
		{ type = "item", name = "y_catalyst_base" , amount = 2.0, },
	  },
	  results = {
		{ type = "item", name = "y_catalyst_ft", amount = 10.0, },
	  },
	  main_product = "y_catalyst_ft",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/icon_regftcat32.png",
	  order = "bb", group = "yuoki_liquids", subgroup = "y_refine_material",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_regcatbp_recipe",
	  category = "chemistry", -- 
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "y_usedcatalyst" , amount = 10.0, },
		{ type = "item", name = "y-unicomp-a2" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "y_catalyst_bp", amount = 10.0, },
	  },
	  main_product = "y_catalyst_bp",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/icon_regbpcat28.png",
	  order = "ba", group = "yuoki_liquids", subgroup = "y_refine_material",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_coal2liquid",
	  category = "chemistry", -- 
	  enabled = "true",
	  energy_required = 5.00,
	  ingredients = {
		{ type = "fluid", name = "y_hydrogen" , amount = 200, },
		{ type = "item", name = "y-coal-dust" , amount = 10.0, },
		{ type = "item", name = "y_catalyst_bp" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "y_usedcatalyst", amount = 1.0, },
		{ type = "fluid", name = "crude-oil", amount = 100, },
	  },
	  main_product = "y_usedcatalyst",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/ctl_b32.png",
	  order = "c1", group = "yuoki_liquids", subgroup = "y-fluid",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_refinehydrogen_recipe",
	  category = "chemistry", -- 
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "fluid", name = "y_syngas_raw" , amount = 30, },
		{ type = "fluid", name = "water" , amount = 80, },
	  },
	  results = {
		{ type = "fluid", name = "y_hydrogen", amount = 80, },
	  },
	  main_product = "y_hydrogen",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/obs/hydrogen_i32.png",
	  order = "d", group = "yuoki_liquids", subgroup = "y-fluid",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_rawsyngas1_recipe",
	  category = "chemistry", -- 
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "y-coal-dust" , amount = 1.0, },
	  },
	  results = {
		{ type = "fluid", name = "y_syngas_raw", amount = 10, },
	  },
	  main_product = "y_syngas_raw",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/obs/h2o_c_icon.png",
	  order = "c3", group = "yuoki_liquids", subgroup = "y-fluid",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_uc2catalyst",
	  category = "yuoki-atomics-recipe", -- 
	  enabled = "true",
	  energy_required = 4.00,
	  ingredients = {
		{ type = "item", name = "y-unicomp-a2" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "y_catalyst_base", amount = 48.0, },
	  },
	  main_product = "y_catalyst_base",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/atomics/buy_catbase.png",
	  order = "x", group = "yuoki-atomics", subgroup = "y-atomics-r",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_catalyst_ft_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "y-raw-fuelnium" , amount = 1.0, },
		{ type = "item", name = "y-unicomp-raw" , amount = 1.0, },
		{ type = "item", name = "y_catalyst_base" , amount = 3.0, },
	  },
	  results = {
		{ type = "item", name = "y_catalyst_ft", amount = 1.0, },
	  },
	  main_product = "y_catalyst_ft",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/icon_ftcat32.png",
	  order = "ab", group = "yuoki_liquids", subgroup = "y_refine_material",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_catalyst_bp_recipe",
	  category = "crafting", -- 
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "y-unicomp-raw" , amount = 1.0, },
		{ type = "item", name = "y-raw-fuelnium" , amount = 1.0, },
		{ type = "item", name = "iron-plate" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "y_catalyst_bp", amount = 1.0, },
	  },
	  main_product = "y_catalyst_bp",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/icon_bpcat28.png",
	  order = "aa", group = "yuoki_liquids", subgroup = "y_refine_material",
	},

	-- 
	{
	  type = "recipe",
	  name = "y_granulate_wood_recipe",
	  category = "y-crushing-recipe", -- 
	  enabled = "true",
	  energy_required = 2.00,
	  ingredients = {
		{ type = "item", name = "raw-wood" , amount = 1.0, },
	  },
	  results = {
		{ type = "item", name = "y_organic_dust", amount = 7.0, },
	  },
	  main_product = "y_organic_dust",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/sawdust_32.png",
	  order = "0", group = "yuoki_liquids", subgroup = "y_refine_raws",
	},

})