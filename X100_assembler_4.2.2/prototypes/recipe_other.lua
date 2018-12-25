data:extend({
  {
    type = "recipe",
    name = "X100_Steam",
	category="X100_smelting",
	subgroup = "X100_subgroup_furnace",
	energy_required = 55,
	oreder="zzzzzzzzzz",
    enabled = "true",
    ingredients =
    {
      {type="fluid", name="water", amount=500}
    },
    results=
    {
      {type="fluid", name="steam", amount=800,temperature=99.5}
    }
  },
   {
    type = "recipe",
    name = "X100_offshore_pump",
	subgroup = "production-machine",
	oreder="zzzzzzzzzz",
    enabled = "true",
    ingredients =
    {
      {type="item", name="X100_pipe", amount=2},
      {type="item", name="iron-gear-wheel", amount=5}
    },
    results=
    {
      {type="item", name="X100_offshore_pump", amount=1}
    }
  },
   {
    type = "recipe",
    name = "X100_pump",
	subgroup = "production-machine",
	oreder="zzzzzzzzzz",
    enabled = "true",
    ingredients =
    {
      {type="item", name="X100_pipe", amount=2},
      {type="item", name="iron-gear-wheel", amount=5}
    },
    results=
    {
      {type="item", name="X100_pump", amount=1}
    }
  }
})