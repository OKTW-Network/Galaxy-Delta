scoreboard players operation #gui.build_piece.fuel_bar_1x1.burnTime1000 galaxy = @s galaxy.block.process.progress
scoreboard players operation #gui.build_piece.fuel_bar_1x1.burnTime1000 galaxy *= #1000 num
scoreboard players operation #gui.build_piece.fuel_bar_1x1.burnTime1000 galaxy /= #galaxy$block.coke_furnace.process_duration Config
execute unless score #gui.build_piece.fuel_bar_1x1.burnTime1000 galaxy matches 0 run scoreboard players remove #gui.build_piece.fuel_bar_1x1.burnTime1000 galaxy 1000
execute unless score #gui.build_piece.fuel_bar_1x1.burnTime1000 galaxy matches 0 run scoreboard players operation #gui.build_piece.fuel_bar_1x1.burnTime1000 galaxy *= #-1 num
scoreboard players set #gui.build_piece.fuel_bar_1x1.slot galaxy 20
function galaxy:gui/build_piece/fuel_bar_1x1/main
