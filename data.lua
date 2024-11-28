local util = require("__core__/lualib/util") -- for deepcopy

data.raw.lab.biolab.energy_source = table.deepcopy(data.raw["assembling-machine"].biochamber.energy_source)
-- Leaving power at 300kW. Biochambers use 500kW.
-- Biochambers have -1/m pollution emission (ie they reduce pollution). Biolabs had 8/m pollution emission, but this changes it to -1/m. Captive biter spawners are also -1/m. Could change it back to 8/m, but I'll leave it the same as the other two.
data.raw.lab.biolab.energy_source.light_flicker = nil -- Don't want to copy this from the biochamber.