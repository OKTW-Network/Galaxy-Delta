# cover
tag @s[predicate=!galaxy:gui/check_cover-1i1o1p1s] add setGuiCover
execute if entity @s[tag=setGuiCover] run function galaxy:gui/cleanup_gui_item
execute if entity @s[tag=setGuiCover] run function galaxy:gui/coke_furnace/drop-not_gui
execute if entity @s[tag=setGuiCover] run function galaxy:gui/build-1i1o1p1s-cover
tag @s[tag=setGuiCover] remove setGuiCover

# progress bar
tag @s[predicate=!galaxy:gui/check_slot-12] add setProgress
execute if entity @s[tag=setProgress] run function galaxy:gui/cleanup_gui_item
execute if entity @s[tag=setProgress] run function galaxy:gui/coke_furnace/build-progress
tag @s[tag=setProgress] remove setProgress

# fuel bar
tag @s[predicate=!galaxy:gui/check_slot-20] add setSmelt
execute if entity @s[tag=setSmelt] run function galaxy:gui/cleanup_gui_item
execute if entity @s[tag=setSmelt] run function galaxy:gui/coke_furnace/build-smelt
tag @s[tag=setSmelt] remove setSmelt

# update process
execute if entity @s[tag=galaxy.gui.updateProcess] run function galaxy:gui/coke_furnace/build-progress
execute if entity @s[tag=galaxy.gui.updateProcess] run function galaxy:gui/coke_furnace/build-smelt
tag @s[tag=galaxy.gui.updateProcess] remove galaxy.gui.updateProcess
