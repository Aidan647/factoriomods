data.raw.roboport.roboport.energy_source.input_flow_limit = "15MW"
data.raw.roboport.roboport. charging_energy = "3MW"
data.raw.roboport.roboport.robot_slots_count = 20
data.raw.roboport.roboport.material_slots_count = 10

data.raw["roboport-equipment"]["personal-roboport-equipment"].energy_source.input_flow_limit = "7MW"
data.raw["roboport-equipment"]["personal-roboport-equipment"].charging_energy = "3MW"

data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].energy_source.input_flow_limit = "12MW"
data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].charging_energy = "3MW"

if logistic == true  then
  require("prototypes.5dim")
end
if bobmods then
  if bobmods.logistics then
    require("prototypes.bob")
  end
  if bobmods.equipment then
    require("prototypes.bobequipment")
  end
end
if angelsmods then
  if angelsmods.industry then
    --require("prototypes.angel")
  end
end
