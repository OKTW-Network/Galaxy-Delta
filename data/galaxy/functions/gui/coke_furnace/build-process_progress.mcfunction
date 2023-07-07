scoreboard players operation #gui.build_piece.progress_bar_2x1.progress1000 galaxy = @s galaxy.block.process.progress
scoreboard players operation #gui.build_piece.progress_bar_2x1.progress1000 galaxy *= #1000 num
scoreboard players operation #gui.build_piece.progress_bar_2x1.progress1000 galaxy /= #galaxy$block.coke_furnace.process_duration Config
scoreboard players set #gui.build_piece.progress_bar_2x1.slot galaxy 12
function galaxy:gui/build_piece/progress_bar_2x1/main
