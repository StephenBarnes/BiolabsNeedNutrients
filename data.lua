local util = require("__core__/lualib/util") -- for deepcopy

local originalEnergySource = data.raw.lab.biolab.energy_source
data.raw.lab.biolab.energy_source = table.deepcopy(data.raw["assembling-machine"].biochamber.energy_source)
-- Leaving power at 300kW. Biochambers use 500kW.
-- Biochambers have -1/m pollution emission (ie they reduce pollution). Biolabs had 8/m pollution emission, but this changes it to -1/m. Captive biter spawners are also -1/m. Looking at a simple Nauvis base importing most sciences, biolabs are actually the majority of the pollution, so I'm changing it back to 8/m.
data.raw.lab.biolab.energy_source.emissions_per_minute = originalEnergySource.emissions_per_minute
data.raw.lab.biolab.energy_source.light_flicker = nil -- Don't want to copy this from the biochamber.