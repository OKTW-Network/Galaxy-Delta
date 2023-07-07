scoreboard players operation #gui.build_piece.progress_bar_2x1.progress1000 galaxy = #gui.furnace_like.processProgress galaxy
scoreboard players operation #gui.build_piece.progress_bar_2x1.progress1000 galaxy *= #1000 num
scoreboard players operation #gui.build_piece.progress_bar_2x1.progress1000 galaxy /= #gui.furnace_like.processProgressMax galaxy
scoreboard players set #gui.build_piece.progress_bar_2x1.slot galaxy 12
function galaxy:gui/build_piece/progress_bar_2x1/main
