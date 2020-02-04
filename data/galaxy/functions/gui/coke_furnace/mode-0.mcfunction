# relplace the block when GUI contains non-guiItem
tag @s[predicate=galaxy:gui/check_cover_slot-1i1o1p1s,predicate=!galaxy:gui/check_cover-1i1o1p1s] add replace
execute if entity @s[tag=replace] run function galaxy:block/machine/coke_furnace/replace
tag @s[tag=replace] remove replace

# gui cover
tag @s[predicate=!galaxy:gui/check_cover-1i1o1p1s] add setGuiCover
execute if entity @s[tag=setGuiCover] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setGuiCover] run function galaxy:gui/build-1i1o1p1s-cover
tag @s[tag=setGuiCover] remove setGuiCover

# progress bar
scoreboard players set @s[predicate=!galaxy:gui/check_slot-12] setProgress 1

execute if score @s setProgress matches 1 run function galaxy:gui/remove-gui_item

execute if score @s setProgress matches 1 if score @s workStatus matches 0 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20400,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches -1 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20423,guiItem:1}

execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 0..40 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20400,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 41..80 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20401,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 81..120 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20402,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 121..160 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20403,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 161..200 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20404,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 201..240 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20405,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 241..280 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20406,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 281..320 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20407,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 321..360 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20408,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 361..400 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20409,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 401..440 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20410,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 441..480 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20411,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 481..520 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20412,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 521..560 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20413,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 561..600 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20414,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 601..640 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20415,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 641..680 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20416,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 681..720 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20417,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 721..760 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20418,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 761..800 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20419,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 801..840 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20420,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 841..880 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20421,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 881..1000 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20422,guiItem:1}

execute if score @s setProgress matches 1 run scoreboard players set @s setProgress 0

# process status
scoreboard players set @s[predicate=!galaxy:gui/check_slot-13] setProcess 1

execute if score @s setProcess matches 1 run function galaxy:gui/remove-gui_item

execute if score @s setProcess matches 1 if score @s workStatus matches 0 run replaceitem block ~ ~ ~ container.13 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.process.idle\",\"color\":\"gray\",\"italic\":false}"},CustomModelData:100,guiItem:1}
execute if score @s setProcess matches 1 if score @s workStatus matches -1 run replaceitem block ~ ~ ~ container.13 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.process.invalid\",\"color\":\"red\",\"italic\":false}"},CustomModelData:100,guiItem:1}
execute if score @s setProcess matches 1 if score @s workStatus matches 1 run replaceitem block ~ ~ ~ container.13 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.process.working\",\"color\":\"green\",\"italic\":false}"},CustomModelData:100,guiItem:1}

execute if score @s setProcess matches 1 run scoreboard players set @s setProcess 0

# smelt status
scoreboard players set @s[predicate=!galaxy:gui/check_slot-20] setSmelt 1

execute if score @s setSmelt matches 1 run function galaxy:gui/remove-gui_item

execute if score @s setSmelt matches 1 if score @s workStatus matches -1..0 run replaceitem block ~ ~ ~ container.20 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20500,guiItem:1}

execute if score @s setSmelt matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 0..76 run replaceitem block ~ ~ ~ container.20 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20513,guiItem:1}
execute if score @s setSmelt matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 77..153 run replaceitem block ~ ~ ~ container.20 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20512,guiItem:1}
execute if score @s setSmelt matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 154..230 run replaceitem block ~ ~ ~ container.20 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20511,guiItem:1}
execute if score @s setSmelt matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 231..307 run replaceitem block ~ ~ ~ container.20 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20510,guiItem:1}
execute if score @s setSmelt matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 308..384 run replaceitem block ~ ~ ~ container.20 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20509,guiItem:1}
execute if score @s setSmelt matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 385..461 run replaceitem block ~ ~ ~ container.20 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20508,guiItem:1}
execute if score @s setSmelt matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 462..538 run replaceitem block ~ ~ ~ container.20 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20507,guiItem:1}
execute if score @s setSmelt matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 538..615 run replaceitem block ~ ~ ~ container.20 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20506,guiItem:1}
execute if score @s setSmelt matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 616..692 run replaceitem block ~ ~ ~ container.20 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20505,guiItem:1}
execute if score @s setSmelt matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 693..769 run replaceitem block ~ ~ ~ container.20 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20504,guiItem:1}
execute if score @s setSmelt matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 770..846 run replaceitem block ~ ~ ~ container.20 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20503,guiItem:1}
execute if score @s setSmelt matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 847..923 run replaceitem block ~ ~ ~ container.20 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20502,guiItem:1}
execute if score @s setSmelt matches 1 if score @s workStatus matches 1 if score #calculation_temp1 numeric matches 924..1000 run replaceitem block ~ ~ ~ container.20 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20501,guiItem:1}

execute if score @s setSmelt matches 1 run scoreboard players set @s setSmelt 0
