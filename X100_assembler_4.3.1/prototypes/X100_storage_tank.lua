data:extend(
{
  {
    type = "item",
    name = "X100_storage_tank",
	icons ={
	{icon = "__base__/graphics/icons/storage-tank.png"},
	{icon = "__X100_assembler__/graphics/icons.png"}
	},
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "storage",
    order = "z[fluid]-z[storage-tank]",
    place_result = "X100_storage_tank",
    stack_size = 100
  },
  {
    type = "storage-tank",
    name = "X100_storage_tank",
    icon = "__base__/graphics/icons/storage-tank.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 10, result = "X100_storage_tank"},
    max_health = 5000,
    corpse = "big-remnants",
    collision_box = {{-7, -7}, {7, 7}},
    selection_box = {{-7, -7}, {7, 7}},
	collision_mask = {"resource-layer"},
    fluid_box =
    {
      base_area = 100000,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {-7.5, -5.5} },
        { position = {-7.5, -3.5} },
        { position = {-7.5, -1.5} },
        { position = {-7.5, 5.5} },
        { position = {-7.5, 3.5} },
        { position = {-7.5, 1.5} },

        { position = {7.5, -5.5} },
        { position = {7.5, -3.5} },
        { position = {7.5, -1.5} },
        { position = {7.5, 5.5} },
        { position = {7.5, 3.5} },
        { position = {7.5, 1.5} },

        { position = {-5.5, -7.5} },
        { position = {-3.5, -7.5} },
        { position = {-1.5, -7.5} },
        { position = {5.5, -7.5} },
        { position = {3.5, -7.5} },
        { position = {1.5, -7.5} },

        { position = {-5.5, 7.5} },
        { position = {-3.5, 7.5} },
        { position = {-1.5, 7.5} },
        { position = {5.5, 7.5} },
        { position = {3.5, 7.5} },
        { position = {1.5, 7.5} },
      },
    },
    two_direction_only = true,
    window_bounding_box = {{-0.625, 2.9875}, {1, 5.7375}},
    pictures =
    {
      picture =
      {
        sheets =
        {
          {
            filename = "__X100_assembler__/graphics/storage-tank.png",
            priority = "extra-high",
            frames = 1,
            width = 550,
            height = 540,
            shift = util.by_pixel(0, 4),
          }
        }
      },
      fluid_background =
      {
        filename = "__X100_assembler__/graphics/fluid-background.png",
        priority = "extra-high",
        width = 160,
        height = 75
      },
      window_background =
      {
        filename = "__X100_assembler__/graphics/window-background.png",
        priority = "extra-high",
        width = 85,
        height = 120
      },
      flow_sprite =
      {
        filename = "__X100_assembler__/graphics/fluid-flow-low-temperature.png",
        priority = "extra-high",
        width = 800,
        height = 100
      },
      gas_flow =
      {
        filename = "__X100_assembler__/graphics/steam.png",
        priority = "extra-high",
        line_length = 10,
        width = 120,
        height = 75,
        frame_count = 60,
        axially_symmetrical = false,
        direction_count = 1,
        animation_speed = 0.25
      }
    },
    flow_length_in_ticks = 360,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
          filename = "__base__/sound/storage-tank.ogg",
          volume = 0.8
      },
      apparent_volume = 1.5,
      max_sounds_per_type = 3
    },

    circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
    circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  }  }
)

