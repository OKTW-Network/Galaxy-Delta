scoreboard players operation #gui.build_piece.fuel_bar_1x1.burnTime1000 galaxy = #gui.furnace_like.burnTime galaxy
scoreboard players operation #gui.build_piece.fuel_bar_1x1.burnTime1000 galaxy *= #1000 num
scoreboard players operation #gui.build_piece.fuel_bar_1x1.burnTime1000 galaxy /= #gui.furnace_like.burnTimeMax galaxy
scoreboard players set #gui.build_piece.fuel_bar_1x1.slot galaxy 11
function galaxy:gui/build_piece/fuel_bar_1x1/main
