data:extend(
{

	{
		type = "ammo-category",
		name = "plasma"
	},

	
	-- recipes
	{
		type = "recipe",
		name = "y-bullet-case-recipe",		
		category = "yuoki-formpress-recipe",
		enabled = "true",
		energy_required = 2,
		ingredients = {{"y-pure-copper", 1},{"y-refined-yres1", 1},},
		result = "y-bullet-case",		
		result_count=7,
		subgroup = "y-ammo",	
		order = "a1",
	},		
	{
		type = "recipe",
		name = "y-ammo-acid-medium-recipe",
		category = "crafting-with-fluid",
		enabled = "true",
		energy_required = 17.5,
		ingredients = {{"y-bullet-case", 5},{"copper-plate", 3},{type="fluid", name="sulfuric-acid", amount=1 },},
		results=
		{
			{type="item", name="y-ammo-acid-2", amount=5, },      	  						
			{type="item", name="y_rwtechsign", amount=1, },      	  						
		},				
		main_product="y-ammo-acid-2",
		subgroup = "y-ammo", order="b1",
	},		
	{
		type = "recipe",
		name = "y-ammo-hohlspitz-recipe",
		enabled = "true",
		energy_required = 15,
		ingredients = {{"y-bullet-case", 5},{"y-pure-copper", 2}},
		results=
		{
			{type="item", name="y-ammo-hohlspitz", amount=5, },      	  						
		},
		subgroup = "y-ammo",	
		order="c1",
	},
	{
		type = "recipe",
		name = "y-ammo-explosiv-recipe",
		enabled = "true",
		energy_required = 20,
		ingredients = {{"y-bullet-case", 5},{"y-richdust", 10},{"y-coal-dust", 5},},
		results=
		{
			{type="item", name="y-ammo-explosiv", amount=5, },      	  						
			{type="item", name="ypfw_trader_sign", amount=1, },      	  						
		},				
		main_product="y-ammo-explosiv",		
		subgroup = "y-ammo", order="d1",
	},
	{
		type = "recipe",
		name = "y-ammo-poison-recipe",
		enabled = "true",
		energy_required = 20,
		ingredients ={{"y-bullet-case", 5},{"y-pure-iron", 2},{"y-toxic-dust", 40}},
		results=
		{
			{type="item", name="y-ammo-poison", amount=5, },      	  						
			{type="item", name="ypfw_trader_sign", amount=1, },      	  						
		},				
		main_product="y-ammo-poison",
		subgroup = "y-ammo", order="e1",
	},
	{
		type = "recipe",
		name = "y-ammo-biggun-recipe",
		enabled = "true",
		energy_required = 20,
		ingredients ={{"y-bullet-case", 5},{"y-refined-yres1", 5},{"y-coal-dust", 5},},
		results=
		{
			{type="item", name="y-ammo-biggun", amount=5, },      	  						
			{type="item", name="ypfw_trader_sign", amount=1, },      	  						
		},				
		main_product="y-ammo-biggun",
		subgroup = "y-ammo",	
		order="f1",
	},
	
	{
		type = "recipe",
		name = "y-ammo-krakon-recipe",
		enabled = "true",
		energy_required = 20,
		ingredients ={{"y-bullet-case", 5},{"y-crush-yres2", 10},{"y-pure-iron", 2}},
		results=
		{
			{type="item", name="y-ammo-krakon", amount=5, },      	  						
			{type="item", name="ypfw_trader_sign", amount=1, },      	  						
		},				
		main_product="y-ammo-krakon",
		subgroup = "y-ammo",	
		order="g1",
	},

	{
		type = "recipe",
		name = "y_ammo_case_recipe",		
		category = "yuoki-formpress-recipe",
		enabled = "true",
		energy_required = 2,
		ingredients = {{"y-pure-iron", 1},{"y-refined-yres2", 1},},
		result = "y_ammo_case",		
		result_count=6,
		subgroup = "y-ammo",	
		order = "a2",
	},			
	{
		type = "recipe",
		name = "y_ammo_plasma_recipe",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/capsule_plasma.png",
		enabled = "true",
		energy_required = 4,
		ingredients ={{"y_ammo_case", 4},{"y-raw-fuelnium", 1},},
		results=
		{
			{type="item", name="y_ammo_plasma", amount=8, },      	  						
			{type="item", name="y_rwtechsign", amount=1, },      	  						
		},	
		main_product = "y_ammo_plasma",								
		subgroup = "y-ammo",	
		order="h1",
	},
	{
		type = "recipe",
		name = "y_ammo_flame_recipe",
		enabled = "true",
		energy_required = 4,
		ingredients ={{"y_ammo_case", 1},{"y-toxic-dust", 10},{"y-c_mud", 10},{"y-richdust", 2} },
		results=
		{
			{type="item", name="y_ammo_flame", amount=8, },      	  						
			{type="item", name="ypfw_trader_sign", amount=1, },      	  						
		},	
		main_product = "y_ammo_flame",								
		subgroup = "y-ammo",	
		order="h2",
	},
	
	-- ammo
	{
		type = "item",
		name = "y-bullet-case",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/shell-case.png",
		flags = {"goes-to-quickbar"},
		group = "yuoki",		
		subgroup = "y-ammo",
		order = "a1",
		stack_size = 250,  default_request_amount = 100, 
	},
	
	{
		type = "item",
		name = "y_ammo_case",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/ammo_capsel.png",
		flags = {"goes-to-quickbar"},
		group = "yuoki",		
		subgroup = "y-ammo",
		order = "a2",
		stack_size = 250,  default_request_amount = 100, 
	},

	
	{
		type = "ammo",
		name = "y-ammo-acid-2",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/ammo_poison.png",
		flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "bullet",
			action =
			{
				type = "direct",
				action_delivery =
				{
					type = "instant",
					source_effects =
					{
						type = "create-explosion",
						entity_name = "explosion-gunshot"
					},
					target_effects =
					{
						{
							type = "create-entity",
							entity_name = "explosion-hit"
						},
						{
							type = "damage", damage = { amount = 8 , type = "acid"},													
						},
						{
							type = "damage", damage = { amount = 2 , type = "physical"},	
						}
					}
				}
			}
		},
		magazine_size = 50,
		subgroup = "y-ammo",
		order = "b1",
		stack_size = 200, default_request_amount = 50, 
	},

	{
		type = "ammo",
		name = "y-ammo-hohlspitz",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/ammo_fire.png",
		flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "bullet",
			action =
			{
				type = "direct",
				action_delivery =
				{
					type = "instant",
					source_effects =
					{
						type = "create-explosion",
						entity_name = "explosion-gunshot"
					},
					target_effects =
					{
						{
							type = "create-entity",
							entity_name = "explosion-hit"
						},
						{ type = "damage", damage = { amount = 6 , type = "physical"}, },		
						{ type = "damage", damage = { amount = 2 , type = "impact"}, }														
					}
				}
			}
		},
		magazine_size = 50,
		subgroup = "y-ammo",
		order="c1",
		stack_size = 200, default_request_amount = 50, 
	},

	{
		type = "ammo",
		name = "y-ammo-explosiv",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/ammo_wot.png",
		flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "bullet",
			action =
			{
				type = "direct",
				action_delivery =
				{
					type = "instant",
					source_effects =
					{
						type = "create-explosion",
						entity_name = "explosion-gunshot"
					},
					target_effects =
					{
						{
							type = "create-entity",
							entity_name = "explosion-hit"
						},
						{
							type = "damage", damage = { amount = 11 , type = "explosion"},		
						}
					}
				}
			}
		},
		magazine_size = 50,
		subgroup = "y-ammo",
		order="d1",
		stack_size = 200, default_request_amount = 50, 
	},
	{
		type = "ammo",
		name = "y-ammo-poison",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/ammo_silver.png",
		flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "bullet",
			action =
			{
				type = "direct",
				action_delivery =
				{
					type = "instant",
					source_effects =
					{
						type = "create-explosion",
						entity_name = "explosion-gunshot"
					},
					target_effects =
					{
						{
							type = "create-entity",
							entity_name = "explosion-hit"
						},
						{ type = "damage", damage = { amount = 7.5 , type = "poison"},},
						{ type = "damage", damage = { amount = 2 , type = "physical"},}
					}
				}
			}
		},
		magazine_size = 50,
		subgroup = "y-ammo",
		order="e1",
		stack_size = 200, default_request_amount = 50, 
	},
	{
		type = "ammo",
		name = "y-ammo-biggun",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/ammo_std.png",
		flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "bullet",
			action =
			{
				type = "direct",
				action_delivery =
				{
					type = "instant",
					source_effects =
					{
						type = "create-explosion",
						entity_name = "explosion-gunshot"
					},
					target_effects =
					{
						{
							type = "create-entity",
							entity_name = "explosion-hit"
						},
						{	type = "damage", damage = { amount = 7 , type = "fire"},},							
						{	type = "damage", damage = { amount = 1 , type = "physical"},}							
					}
				}
			}
		},
		magazine_size = 50,
		subgroup = "y-ammo",
		order="f1",
		stack_size = 200, default_request_amount = 50, 
	},
	{
		type = "ammo",
		name = "y-ammo-krakon",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/ammo_wolfram.png",
		flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "bullet",
			action =
			{
				type = "direct",
				action_delivery =
				{
					type = "instant",
					source_effects =
					{
						type = "create-explosion",
						entity_name = "explosion-gunshot"
					},
					target_effects =
					{
						{
							type = "create-entity",
							entity_name = "explosion-hit"
						},
						{	type = "damage", damage = { amount = 9 , type = "impact"},},						
						{	type = "damage", damage = { amount = 2 , type = "physical"},}								
					}
				}
			}
		},
		magazine_size = 50,
		subgroup = "y-ammo",
		order="g1",
		stack_size = 200, default_request_amount = 50, 		
	},		
	
	{
		type = "ammo",
		name = "y_ammo_plasma",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/capsule_plasma.png",
		flags = {"goes-to-main-inventory"},
		
		ammo_type =
		{
			category = "plasma",
			target_type = "direction",
			source_effects =
			{
				type = "create-explosion",
				entity_name = "explosion-gunshot"
			},			
			action =
			{
				type = "direct",				
				action_delivery =
				{
					type = "projectile",
					--projectile = "shotgun-pellet",
					projectile = "green-plasma",
					starting_speed = 1,
					direction_deviation = 0.3,
					range_deviation = 0.3,
					--max_range = 28,					
					
					source_effects =
					{
						type = "create-explosion",
						entity_name = "explosion-gunshot"
					},
					target_effects =
					{
						{
							type = "create-entity",
							entity_name = "explosion-hit"
						},
						{	type = "damage", damage = { amount = 90 , type = "plasma" },},
						{ 	type = "damage", damage = { amount = 20 , type = "fire"},},			
						{ 	type = "damage", damage = { amount = 10 , type = "acid"},},								
					}
				}
				
			}
		},
		magazine_size = 100,
		subgroup = "y-ammo",
		order="h1",
		stack_size = 200, default_request_amount = 50, 		
	},	
	{
		type = "ammo",
		name = "y_ammo_flame",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/capsule_fire.png",
		flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "flamethrower",
			target_type = "direction",
			action =
			{
				type = "direct",
				action_delivery =
				{
					type = "stream",
					stream = "handheld-flamethrower-fire-stream",
					max_length = 15,
					duration = 160,
				}
			}
			
		},
		magazine_size = 200,
		subgroup = "y-ammo",
		order = "h2",
		stack_size = 200, default_request_amount = 50,
	},
	
})