data:extend({
  {
    type = "technology",
    name = "X100-inserter",
    icon = "__base__/graphics/technology/stack-inserter.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "X100-inserter"
      },
      {
        type = "unlock-recipe",
        recipe = "X100-long-inserter"
      },
      {
        type = "unlock-recipe",
        recipe = "X100-filter-inserter"
      },
      {
        type = "unlock-recipe",
        recipe = "X100-long-filter-inserter"
      }
    },
    prerequisites = {"stack-inserter"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-o-a",
  }
})