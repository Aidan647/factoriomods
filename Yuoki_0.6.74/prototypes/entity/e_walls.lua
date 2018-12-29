
data:extend({	 
	{
		type = "wall",
		name = "y-mud-wall",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/m_wall_icon.png",		
		flags = {"placeable-neutral", "player-creation"},
		collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		minable = {mining_time = 1, result = "y-mud-wall"},
		max_health = 500,		
		corpse = "wall-remnants",
		repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
		mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },		
		-- factorio 0.13 start
		repair_speed_modifier = 2,
		fast_replaceable_group = "wall",
		vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
		connected_gate_visualization = { filename = "__core__/graphics/arrows/underground-lines.png",priority = "high",width = 64,height = 64,scale = 0.5 },
		wall_diode_green =
		{
			filename = "__base__/graphics/entity/gate/wall-diode-green.png",
			width = 21,
			height = 22,
			shift = {0, -0.78125}
		},
		wall_diode_green_light =
		{
			minimum_darkness = 0.3,
			color = {g=1},
			shift = {0, -0.78125},
			size = 1,
			intensity = 0.3
		},
		wall_diode_red =
		{
			filename = "__base__/graphics/entity/gate/wall-diode-red.png",
			width = 21,
			height = 22,
			shift = {0, -0.78125}
		},
		wall_diode_red_light =
		{
			minimum_darkness = 0.3,
			color = {r=1},
			shift = {0, -0.78125},
			size = 1,
			intensity = 0.3
		},
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {0.890625, 0.828125},
				green = {0.890625, 0.703125}
			},
			wire =
			{
				red = {-0.28125, -0.71875},
				green = {-0.28125, -0.84375}
			}
		},
		circuit_wire_max_distance = 7.5,
		--circuit_connector_sprites = get_circuit_connector_sprites({0, -0.59375}, nil, 6),
		default_output_signal = data.is_demo and {type = "virtual", name = "signal-green"} or {type = "virtual", name = "signal-G"},
		-- factorio 0.13 - end	
		resistances =
		{
			{ type = "physical", decrease = 3, percent = 40 },
			{ type = "explosion", decrease = 10, percent = 30 },
			{ type = "fire", percent = 100 },			
			{ type = "acid", percent = 30 },
		},
		pictures =
		{
			single =
			{
				{
					filename = "__Yuoki__/graphics/entity/mud_wall/mw_single.png",
					priority = "extra-high",
					width = 32,
					height = 40,
					shift = {0, 0}
				}
			},
			straight_vertical =
			{
				{
					filename = "__Yuoki__/graphics/entity/mud_wall/mw-ns1.png",
					priority = "extra-high",
					width = 32,
					height = 40,
					shift = {0, 0}
				},
				
			},
			straight_horizontal =
			{
				{
					filename = "__Yuoki__/graphics/entity/mud_wall/mw-we1.png",
					priority = "extra-high",
					width = 32,
					height = 40,
					shift = {0, 0}
				},
			},
			corner_right_down =
			{
				{
					filename = "__Yuoki__/graphics/entity/mud_wall/mw1-clu.png",
					priority = "extra-high",
					width = 32,
					height = 40,
					shift = {0, 0}
				}
			},
			corner_left_down =
			{
				{
					filename = "__Yuoki__/graphics/entity/mud_wall/mw1-cru.png",
					priority = "extra-high",
					width = 32,
					height = 40,
					shift = {0, 0}
				}
			},
			t_up =
			{
				{
					filename = "__Yuoki__/graphics/entity/mud_wall/mw1-td.png",
					priority = "extra-high",
					width = 32,
					height = 40,
					shift = {0, 0}
				}
			},
			ending_right =
			{
				{
					filename = "__Yuoki__/graphics/entity/mud_wall/mw1-el.png",
					priority = "extra-high",
					width = 32,
					height = 40,
					shift = {0, 0}
				}
			},
			ending_left =
			{
				{
					filename = "__Yuoki__/graphics/entity/mud_wall/mw1-er.png",
					priority = "extra-high",
					width = 32,
					height = 40,
					shift = {0, 0}
				}
			}
		}
	},
	
	{
		type = "wall",
		name = "y-rare-wall-basic",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/rareore-wall-icon.png",		
		flags = {"placeable-neutral", "player-creation"},
		collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		minable = {mining_time = 1, result = "y-rare-wall-basic"},
		max_health = 850,
		corpse = "wall-remnants",
		repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
		mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
		-- factorio 0.13 start
		repair_speed_modifier = 2,
		fast_replaceable_group = "wall",
		vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
		connected_gate_visualization = { filename = "__core__/graphics/arrows/underground-lines.png",priority = "high",width = 64,height = 64,scale = 0.5 },
		wall_diode_green =
		{
			filename = "__base__/graphics/entity/gate/wall-diode-green.png",
			width = 21,
			height = 22,
			shift = {0, -0.78125}
		},
		wall_diode_green_light =
		{
			minimum_darkness = 0.3,
			color = {g=1},
			shift = {0, -0.78125},
			size = 1,
			intensity = 0.3
		},
		wall_diode_red =
		{
			filename = "__base__/graphics/entity/gate/wall-diode-red.png",
			width = 21,
			height = 22,
			shift = {0, -0.78125}
		},
		wall_diode_red_light =
		{
			minimum_darkness = 0.3,
			color = {r=1},
			shift = {0, -0.78125},
			size = 1,
			intensity = 0.3
		},
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {0.890625, 0.828125},
				green = {0.890625, 0.703125}
			},
			wire =
			{
				red = {-0.28125, -0.71875},
				green = {-0.28125, -0.84375}
			}
		},
		circuit_wire_max_distance = 7.5,
		--circuit_connector_sprites = get_circuit_connector_sprites({0, -0.59375}, nil, 6),
		default_output_signal = data.is_demo and {type = "virtual", name = "signal-green"} or {type = "virtual", name = "signal-G"},
		-- factorio 0.13 - end	
		
		resistances =
		{
			{ type = "physical", decrease = 4, percent = 50 },
			{ type = "explosion", decrease = 5, percent = 50 },
			{ type = "fire", percent = 100 },			
			{ type = "acid", percent = 40 },
		},
		pictures =
		{
			single =
			{
				{
					filename = "__Yuoki__/graphics/entity/rare1-wall.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				},
			},
			straight_vertical =
			{
				{
					filename = "__Yuoki__/graphics/entity/blue_wall/bw-ns.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, -0.15}
				},
			},
			straight_horizontal =
			{
				{
					filename = "__Yuoki__/graphics/entity/blue_wall/bw-we.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				},
			},
			corner_right_down =
			{
				{
					filename = "__Yuoki__/graphics/entity/blue_wall/bw_cr.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				},
			},
			corner_left_down =
			{
				{
					filename = "__Yuoki__/graphics/entity/blue_wall/bw_cl.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				}
			},
			t_up =
			{
				{
					filename = "__Yuoki__/graphics/entity/blue_wall/bw_tu.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				}
			},
			ending_right =
			{
				{
					filename = "__Yuoki__/graphics/entity/blue_wall/bw-end-left.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				}
			},
			ending_left =
			{
				{
					filename = "__Yuoki__/graphics/entity/blue_wall/bw-end-right.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				}
			}
		}
	},	
	
	
	{
		type = "wall",
		name = "y-rare-wall-adv",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/rare2-wall-icon2.png",		
		flags = {"placeable-neutral", "player-creation"},
		collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		minable = {mining_time = 1, result = "y-rare-wall-adv"},
		max_health = 1200,
		corpse = "wall-remnants",
		repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
		mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },		
		-- factorio 0.13 start
		repair_speed_modifier = 2,
		fast_replaceable_group = "wall",
		vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
		connected_gate_visualization = { filename = "__core__/graphics/arrows/underground-lines.png",priority = "high",width = 64,height = 64,scale = 0.5 },
		wall_diode_green =
		{
			filename = "__base__/graphics/entity/gate/wall-diode-green.png",
			width = 21,
			height = 22,
			shift = {0, -0.78125}
		},
		wall_diode_green_light =
		{
			minimum_darkness = 0.3,
			color = {g=1},
			shift = {0, -0.78125},
			size = 1,
			intensity = 0.3
		},
		wall_diode_red =
		{
			filename = "__base__/graphics/entity/gate/wall-diode-red.png",
			width = 21,
			height = 22,
			shift = {0, -0.78125}
		},
		wall_diode_red_light =
		{
			minimum_darkness = 0.3,
			color = {r=1},
			shift = {0, -0.78125},
			size = 1,
			intensity = 0.3
		},
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {0.890625, 0.828125},
				green = {0.890625, 0.703125}
			},
			wire =
			{
				red = {-0.28125, -0.71875},
				green = {-0.28125, -0.84375}
			}
		},
		circuit_wire_max_distance = 7.5,
		--circuit_connector_sprites = get_circuit_connector_sprites({0, -0.59375}, nil, 6),
		default_output_signal = data.is_demo and {type = "virtual", name = "signal-green"} or {type = "virtual", name = "signal-G"},
		-- factorio 0.13 - end	
		
		resistances =
		{
			{ type = "physical", decrease = 6, percent = 60 },
			{ type = "explosion", decrease = 5, percent = 50 },
			{ type = "fire", percent = 100 },			
			{ type = "acid", percent = 50 },
		},
		pictures =
		{
			single =
			{
				{
					filename = "__Yuoki__/graphics/entity/red_wall/rw_single.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				}
			},
			straight_vertical =
			{
				{
					filename = "__Yuoki__/graphics/entity/red_wall/rw_ns.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				},
			},
			straight_horizontal =
			{
				{
					filename = "__Yuoki__/graphics/entity/red_wall/rw_we.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				},
			},
			corner_right_down =
			{
				{
					filename = "__Yuoki__/graphics/entity/red_wall/rw_cr.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				}
			},
			corner_left_down =
			{
				{
					filename = "__Yuoki__/graphics/entity/red_wall/rw_cl.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				}
			},
			t_up =
			{
				{
					filename = "__Yuoki__/graphics/entity/red_wall/rw_tu.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				}
			},
			ending_right =
			{
				{
					filename = "__Yuoki__/graphics/entity/red_wall/rw_el.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				}
			},
			ending_left =
			{
				{
					filename = "__Yuoki__/graphics/entity/red_wall/rw_er.png",
					priority = "extra-high",
					width = 36,
					height = 44,
					shift = {0, 0}
				}
			}
		}
	},	
	
	{
		type = "wall",
		name = "y-wall-forcefield",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/wall-forcefield-icon.png",		
		flags = {"placeable-neutral", "player-creation"},
		collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		minable = {mining_time = 1, result = "y-wall-forcefield"},
		max_health = 800,
		corpse = "wall-remnants",
		repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
		mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
		-- factorio 0.13 start
		repair_speed_modifier = 2,
		fast_replaceable_group = "wall",
		vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
		connected_gate_visualization = { filename = "__core__/graphics/arrows/underground-lines.png",priority = "high",width = 64,height = 64,scale = 0.5 },
		wall_diode_green =
		{
			filename = "__base__/graphics/entity/gate/wall-diode-green.png",
			width = 21,
			height = 22,
			shift = {0, -0.78125}
		},
		wall_diode_green_light =
		{
			minimum_darkness = 0.3,
			color = {g=1},
			shift = {0, -0.78125},
			size = 1,
			intensity = 0.3
		},
		wall_diode_red =
		{
			filename = "__base__/graphics/entity/gate/wall-diode-red.png",
			width = 21,
			height = 22,
			shift = {0, -0.78125}
		},
		wall_diode_red_light =
		{
			minimum_darkness = 0.3,
			color = {r=1},
			shift = {0, -0.78125},
			size = 1,
			intensity = 0.3
		},
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {0.890625, 0.828125},
				green = {0.890625, 0.703125}
			},
			wire =
			{
				red = {-0.28125, -0.71875},
				green = {-0.28125, -0.84375}
			}
		},
		circuit_wire_max_distance = 7.5,
		--circuit_connector_sprites = get_circuit_connector_sprites({0, -0.59375}, nil, 6),
		default_output_signal = data.is_demo and {type = "virtual", name = "signal-green"} or {type = "virtual", name = "signal-G"},
		-- factorio 0.13 - end	
		
		attack_reaction =
		{
			{
				---- how far the mirroring works
				range = 3,
				---- what kind of damage triggers the mirroring
				---- if not present then anything triggers the mirroring
				damage_type = "physical",
				---- caused damage will be multiplied by this and added to the subsequent damages
				reaction_modifier = 0.25,
				action =
				{
					type = "direct",
					action_delivery =
					{
						type = "instant",
						target_effects =
						{
							type = "damage",
							---- always use at least 0.1 damage
							damage = {amount = 3, type = "laser"}
						}
					}
				},
			}
		},
		
		
		resistances =
		{
			{ type = "physical", decrease = 5, percent = 90 },
			{ type = "explosion", decrease = 2, percent = 50 },
			{ type = "fire", percent = 100 },
			{ type = "acid", percent = 80 },
		},
		pictures =
		{
			single ={{
					filename = "__Yuoki__/graphics/entity/wall_force/wf_single.png",
					priority = "extra-high", width = 48, height = 48, shift = {0.2, 0}
				}},
			straight_vertical =
			{
				{
					filename = "__Yuoki__/graphics/entity/wall_force/wf_ns.png",
					priority = "extra-high", width = 48, height = 48, shift = {0.2, 0}
				},
			},
			straight_horizontal =
			{
				{
					filename = "__Yuoki__/graphics/entity/wall_force/wf_we.png",
					priority = "extra-high", width = 48, height = 48, shift = {0.2, 0}
				},
			},
			corner_right_down =
			{
				{
					filename = "__Yuoki__/graphics/entity/wall_force/wf_cr.png",
					priority = "extra-high", width = 48, height = 48, shift = {0.2, 0}
				}
			},
			corner_left_down =
			{
				{
					filename = "__Yuoki__/graphics/entity/wall_force/wf_cl.png",
					priority = "extra-high", width = 48, height = 48, shift = {0.2, 0}
				}
			},
			t_up =
			{
				{
					filename = "__Yuoki__/graphics/entity/wall_force/wf_single.png",
					priority = "extra-high", width = 48, height = 48, shift = {0.2, 0}
				}
			},
			ending_right =
			{
				{
					filename = "__Yuoki__/graphics/entity/wall_force/wf_el.png",
					priority = "extra-high", width = 48, height = 48, shift = {0.2, 0}
				}
			},
			ending_left =
			{
				{
					filename = "__Yuoki__/graphics/entity/wall_force/wf_er.png",
					priority = "extra-high", width = 48, height = 48, shift = {0.2, 0}
				}
			}
		}
	},			

	--[[ fucked by update
	{
		type = "electric-turret",
		name = "y-wall-forcefield-a",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/wall-forcefield-a-icon.png",		
		flags = { "placeable-player", "placeable-enemy", "player-creation"},
		minable = { mining_time = 0.5, result = "y-wall-forcefield-a" },
		max_health = 700,
		corpse = "small-remnants",
		collision_box = {{ -0.4, -0.4}, {0.4, 0.4}},
		selection_box = {{ -0.4, -0.4}, {0.4, 0.4}},
		rotation_speed = 0.01,
		preparing_speed = 0.05,
		dying_explosion = "medium-explosion",
		folding_speed = 0.05,
		resistances =
		{
			{ type = "physical", decrease = 5, percent = 90 },
			{ type = "explosion", decrease = 2, percent = 50 },
			{ type = "fire", percent = 100 },
			{ type = "acid", percent = 80 },
		},			
		
		energy_source =
		{
			type = "electric",
			buffer_capacity = "1800kJ",
			input_flow_limit = "800kW",
			drain = "2kW",
			usage_priority = "primary-input"
		},
		
		folded_animation = (function()
		local res = util.table.deepcopy(y_vds_a)
		res.frame_count = 1
		res.line_length = 1
		return res
		end)(),
		
		preparing_animation = y_vds_a,
		prepared_animation =
		{
			filename = "__Yuoki__/graphics/entity/wall-forcefield-ae.png",
			priority = "medium", width = 48, height = 48, shift = {0.25, 0},
			direction_count = 1,
			frame_count = 1,
			line_length = 1,
			axially_symmetrical = false,
			
		},
		
		folding_animation = (function()
		local res = util.table.deepcopy(y_vds_a)
		res.run_mode = "backward"
		return res
		end)(),
		
		attack_parameters =
		{
			type = "projectile",
			damage_modifier = 1,
			
			ammo_category = "electric",
			cooldown = 12,
			--damage = 1.0,
			projectile_center = {0, 0},
			projectile_creation_distance = 0.2,
			range = 8,
			sound = {{ filename = "__base__/sound/fight/laser-1.ogg", volume = 0.1 }},
			ammo_type =
			{
				type = "projectile",
				category = "laser-turret",
				energy_consumption = "100kJ",
				action =
				{
					{
						type = "direct",
						action_delivery =
						{
							{
								type = "projectile",
								projectile = "laser",
								starting_speed = 0.25,
							}
						}
					}
				}
			},
		},
		order="a";
	},		
	]]
	
	-- possible fucked by 0.13
	{
		type = "wall",
		name = "y_wall22_hardic",
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/walls/wall_hardic_icon.png",		
		flags = {"placeable-neutral", "player-creation"},
		collision_box = {{-0.9, -0.9}, {0.8, 0.8}},
		selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
		drawing_box = {{-1,-1.5},{1,1.5}},
		minable = {mining_time = 1, result = "y_wall22_hardic"},
		max_health = 4000,
		corpse = "wall-remnants",
		repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
		mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
		-- factorio 0.13 start
		repair_speed_modifier = 2,
		fast_replaceable_group = "wall",
		vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
		connected_gate_visualization = { filename = "__core__/graphics/arrows/underground-lines.png",priority = "high",width = 64,height = 64,scale = 0.5 },
		wall_diode_green =
		{
			filename = "__base__/graphics/entity/gate/wall-diode-green.png",
			width = 21,
			height = 22,
			shift = {0, -0.78125}
		},
		wall_diode_green_light =
		{
			minimum_darkness = 0.3,
			color = {g=1},
			shift = {0, -0.78125},
			size = 1,
			intensity = 0.3
		},
		wall_diode_red =
		{
			filename = "__base__/graphics/entity/gate/wall-diode-red.png",
			width = 21,
			height = 22,
			shift = {0, -0.78125}
		},
		wall_diode_red_light =
		{
			minimum_darkness = 0.3,
			color = {r=1},
			shift = {0, -0.78125},
			size = 1,
			intensity = 0.3
		},
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {0.890625, 0.828125},
				green = {0.890625, 0.703125}
			},
			wire =
			{
				red = {-0.28125, -0.71875},
				green = {-0.28125, -0.84375}
			}
		},
		circuit_wire_max_distance = 7.5,
		--circuit_connector_sprites = get_circuit_connector_sprites({0, -0.59375}, nil, 6),
		default_output_signal = data.is_demo and {type = "virtual", name = "signal-green"} or {type = "virtual", name = "signal-G"},
		-- factorio 0.13 - end	
		
		resistances =
		{		
			{ type = "physical", decrease = 7, percent = 50, },
			{ type = "explosion", decrease = 5, percent = 50, },
			{ type = "fire", percent = 100 },
			{ type = "acid", percent = 30 },
		},
		pictures =
		{
			single =
			{
				{
					filename = "__Yuoki__/graphics/entity/walls/wall_hardic_single.png",
					priority = "extra-high", width = 96, height = 96, shift = {0.5, -0.25}
				},
			},
			straight_vertical =
			{
				{
					filename = "__Yuoki__/graphics/entity/walls/wall_hardic_single.png",
					priority = "extra-high", width = 96, height = 96, shift = {0.5, -0.25}
				},
			},
			straight_horizontal =
			{
				{
					filename = "__Yuoki__/graphics/entity/walls/wall_hardic_single.png",
					priority = "extra-high", width = 96, height = 96, shift = {0.5, -0.25}
				},
			},
			corner_right_down =
			{
				{
					filename = "__Yuoki__/graphics/entity/walls/wall_hardic_single.png",
					priority = "extra-high", width = 96, height = 96, shift = {0.5, -0.25}
				},
			},
			corner_left_down =
			{
				{
					filename = "__Yuoki__/graphics/entity/walls/wall_hardic_single.png",
					priority = "extra-high", width = 96, height = 96, shift = {0.5, -0.25}
				}
			},
			t_up =
			{
				{
					filename = "__Yuoki__/graphics/entity/walls/wall_hardic_single.png",
					priority = "extra-high", width = 96, height = 96, shift = {0.5, -0.25}
				}
			},
			ending_right =
			{
				{
					filename = "__Yuoki__/graphics/entity/walls/wall_hardic_single.png",
					priority = "extra-high", width = 96, height = 96, shift = {0.5, -0.25}
				}
			},
			ending_left =
			{
				{
					filename = "__Yuoki__/graphics/entity/walls/wall_hardic_single.png",
					priority = "extra-high", width = 96, height = 96, shift = {0.5, -0.25}
				}
			}
		}
	},	
	
	

})