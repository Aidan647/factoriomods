data:extend({
{
    type = "recipe",
    name = "X100_storage_tank",
    energy_required = 3,
    enabled = false,
    ingredients =
    {
      {"storage-tank", 15},
      {"steel-plate", 20}
    },
    result= "X100_storage_tank"
  },
  {
    -- Super loader
    type = "recipe",
    name = "loader_X100",
    energy_required = 1,
    category ="X100_assembler", "crafting-with-fluid",
    ingredients =
    {
      {type="item", name="iron-plate", amount=10},
      {type="item", name="processing-unit", amount=5},
      {type="item", name="express-transport-belt", amount=2},
      {type="fluid", name="lubricant", amount=10}
    },
    result = "loader_X100",
    enabled = false
  },
  {
    type = "recipe",
    name = "splitter_X100",
    enabled = "false",
    subgroup = "belt",
    order = "b",
    energy_required = 1,
    category ="X100_assembler", "crafting-with-fluid",
    ingredients =
    {
      {type="item", name="express-splitter", amount=5},
      {type="item", name="iron-plate", amount=5},
      {type="item", name="processing-unit", amount=1},
      {type="item", name="express-transport-belt", amount=2},
      {type="fluid", name="lubricant", amount=10}
    },
    result = "splitter_X100"
  },
  {
    type = "recipe",
    name = "transport_belt_X100",
    enabled = "false",
    subgroup = "belt",
    order = "b",
    energy_required = 1,
    category ="X100_assembler", "crafting-with-fluid",
    ingredients =
    {
      {type="item", name="iron-plate", amount=2},
      {type="item", name="processing-unit", amount=10},
      {type="item", name="express-transport-belt", amount=4},
      {type="fluid", name="lubricant", amount=80}
    },
    result_count = 8,
    result = "transport_belt_X100"
  },
  {
    type = "recipe",
    name = "transport_ground_X100",
    enabled = "false",
    energy_required = 1,
    category ="X100_assembler", "crafting-with-fluid",
    ingredients =
    {
      {type="item", name="iron-plate", amount=5},
      {type="item", name="processing-unit", amount=1},
      {type="item", name="express-transport-belt", amount=2},
      {type="fluid", name="lubricant", amount=10}
    },
    result_count = 2,
    result = "transport_ground_X100"
  },
  {
    type = "recipe",
    name = "transport_ground_X100_chanal1",
    enabled = "false",
    energy_required = 1,
    category ="X100_assembler", "crafting-with-fluid",
    ingredients =
    {
      {type="item", name="iron-plate", amount=5},
      {type="item", name="processing-unit", amount=1},
      {type="item", name="express-transport-belt", amount=2},
      {type="fluid", name="lubricant", amount=10}
    },
    result_count = 2,
    result = "transport_ground_X100_chanal1"
  },
  --Recipe
  {
    type = "recipe",
    name = "X100_assembler",
	subgroup = "production-machine",
    enabled = "false",
    ingredients =
    {
      {type="item", name="speed-module-3", amount=4},
      {type="item", name="iron-plate", amount=9},
      {type="item", name="electronic-circuit", amount=3},
      {type="item", name="iron-gear-wheel", amount=5},
      {type="item", name="assembling-machine-3", amount=8}
    },
    results=
    {
      {type="item", name="X100_assembler", amount=1}
    }
  },
  {
    type = "recipe",
    name = "X100_advance_assembler",
	subgroup = "production-machine",
    enabled = "false",
    ingredients =
    {
      {type="item", name="speed-module-3", amount=4},
      {type="item", name="iron-plate", amount=9},
      {type="item", name="electronic-circuit", amount=3},
      {type="item", name="iron-gear-wheel", amount=5},
      {type="item", name="assembling-machine-3", amount=8}
    },
    results=
    {
      {type="item", name="X100_advance_assembler", amount=1}
    }
  },
  {
    type = "recipe",
    name = "X100_pipe-ground",
    enabled = "true",

    ingredients =
    {
      {"X100_pipe", 2},
      {"iron-plate", 5},
    },
    result_count = 2,
    result = "X100_pipe-ground"
  },
  {
    type = "recipe",
    name = "X100_pipe",
    enabled = "true",
    ingredients =
    {
      {"iron-plate", 2},
    },
    result_count = 1,
    result = "X100_pipe"
  },
  {
    type = "recipe",
    name = "X100-locomotive-1",
    energy_required = 10,
    enabled = "false",
    ingredients ={
      {"engine-unit", 20},
      {"steel-plate", 75},
      {"electronic-circuit", 20},
      {"iron-gear-wheel", 25},
    },
    result = "X100-locomotive-1",
  },
  {
    type = "recipe",
    name = "X100-locomotive-tender",
    energy_required = 10,
    enabled = "false",
    ingredients ={
      {"engine-unit", 20},
      {"steel-plate", 75},
      {"electronic-circuit", 20},
      {"iron-gear-wheel", 25},
    },
    result = "X100-locomotive-tender",
  },
  {
    type = "recipe",
    name = "X100-wagon-1",
    energy_required = 10,
    enabled = "false",
    ingredients ={
      {"steel-plate", 50},
      {"iron-plate", 30},
    },
    result = "X100-wagon-1",
  },
  {
    type = "recipe",
    name = "X100-wagon-2",
    energy_required = 10,
    enabled = "false",
    ingredients ={
      {"steel-plate", 50},
      {"iron-plate", 30},
    },
    result = "X100-wagon-2",
  },
    {
    type = "recipe",
    name = "X100_electric-mining-drill",
    energy_required = 10,
    enabled = "false",
    ingredients ={
      {"engine-unit", 10},
      {"steel-plate", 45},
      {"electronic-circuit", 20},
      {"iron-gear-wheel", 25},
    },
    result = "X100_electric-mining-drill",
  },
  {
    type = "recipe",
    name = "X100_furnace",
	subgroup = "production-machine",
    enabled = "false",
    ingredients =
    {
      {type="item", name="speed-module-3", amount=4},
      {type="item", name="iron-plate", amount=9},
      {type="item", name="electronic-circuit", amount=3},
      {type="item", name="iron-gear-wheel", amount=5},
      {type="item", name="electric-furnace", amount=8}
    },
    results=
    {
      {type="item", name="X100_furnace", amount=1}
    }
  }
  
})