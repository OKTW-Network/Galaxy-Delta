# working status logic
function galaxy:recipe/advanced_blast_furnace
execute unless score @s workStatus = @s workStatusTemp run function galaxy:gui/advanced_blast_furnace/update
execute run scoreboard players operation @s workStatusTemp = @s workStatus


# relplace the block when GUI contains non-guiItem
tag @s[predicate=galaxy:gui/check_cover_slot-2i1o1p1s,predicate=!galaxy:gui/check_cover-2i1o1p1s] add replace
execute if entity @s[tag=replace] run function galaxy:block/machine/advanced_blast_furnace/replace
tag @s[tag=replace] remove replace

# gui cover
tag @s[predicate=!galaxy:gui/check_cover-2i1o1p1s] add setGuiCover
execute if entity @s[tag=setGuiCover] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setGuiCover] run function galaxy:gui/build-2i1o1p1s-cover
tag @s[tag=setGuiCover] remove setGuiCover


# machine working
execute unless score @s workStatus matches 1 if score @s workProc1 matches 1.. run scoreboard players set @s workProc1 0
execute if score @s workStatus matches 1 run scoreboard players add @s workProc1 1

execute if score @s workStatus matches 1 if score @s workProc1 >= #advanced_blast_furnace_dur Config if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{ingotSteel:1}}]} store result score @s workProc1OCount run data get block ~ ~ ~ Items[{Slot:15b}].Count
execute if score @s workStatus matches 1 if score @s workProc1 >= #advanced_blast_furnace_dur Config if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{ingotSteel:1}}]} run scoreboard players add @s workProc1OCount 1
execute if score @s workStatus matches 1 if score @s workProc1 >= #advanced_blast_furnace_dur Config if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{ingotSteel:1}}]} store result block ~ ~ ~ Items[{Slot:15b}].Count byte 1 run scoreboard players get @s workProc1OCount
execute if score @s workStatus matches 1 if score @s workProc1 >= #advanced_blast_furnace_dur Config unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b}]} run replaceitem block ~ ~ ~ container.15 minecraft:command_block{display:{Name:"{\"translate\":\"item.galaxy.steel_ingot\",\"italic\":false,\"color\":\"white\"}"},CustomModelData:1010,ingotSteel:1}
execute if score @s workStatus matches 1 if score @s workProc1 >= #advanced_blast_furnace_dur Config store result score @s workProc1ICount run data get block ~ ~ ~ Items[{Slot:2b}].Count
execute if score @s workStatus matches 1 if score @s workProc1 >= #advanced_blast_furnace_dur Config run scoreboard players remove @s workProc1ICount 1
execute if score @s workStatus matches 1 if score @s workProc1 >= #advanced_blast_furnace_dur Config store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players get @s workProc1ICount
execute if score @s workStatus matches 1 if score @s workProc1 >= #advanced_blast_furnace_dur Config store result score @s workProc1ICount run data get block ~ ~ ~ Items[{Slot:20b}].Count
execute if score @s workStatus matches 1 if score @s workProc1 >= #advanced_blast_furnace_dur Config run scoreboard players remove @s workProc1ICount 1
execute if score @s workStatus matches 1 if score @s workProc1 >= #advanced_blast_furnace_dur Config store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run scoreboard players get @s workProc1ICount
execute if score @s workStatus matches 1 if score @s workProc1 >= #advanced_blast_furnace_dur Config run scoreboard players set @s workProc1 0

execute if score @s workStatus matches 1 if block ~ ~ ~ minecraft:barrel[open=true] run scoreboard players operation @s workProc1Temp1 = @s workProc1
execute if score @s workStatus matches 1 if block ~ ~ ~ minecraft:barrel[open=true] run scoreboard players operation @s workProc1Temp2 = #advanced_blast_furnace_dur Config
execute if score @s workStatus matches 1 if block ~ ~ ~ minecraft:barrel[open=true] run scoreboard players operation @s workProc1Temp1 *= #static_1000 numeric
execute if score @s workStatus matches 1 if block ~ ~ ~ minecraft:barrel[open=true] run scoreboard players operation @s workProc1Temp1 /= @s workProc1Temp2
execute if score @s workStatus matches 1 if block ~ ~ ~ minecraft:barrel[open=true] run scoreboard players set @s setProgress 1

# progress bar
scoreboard players set @s[predicate=!galaxy:gui/check_slot-12] setProgress 1

execute if score @s setProgress matches 1 run function galaxy:gui/remove-gui_item

execute if score @s setProgress matches 1 if score @s workStatus matches 0 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20400,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches -1 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20423,guiItem:1}

execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 0..40 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20400,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 41..80 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20401,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 81..120 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20402,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 121..160 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20403,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 161..200 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20404,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 201..240 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20405,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 241..280 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20406,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 281..320 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20407,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 321..360 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20408,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 361..400 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20409,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 401..440 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20410,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 441..480 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20411,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 481..520 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20412,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 521..560 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20413,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 561..600 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20414,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 601..640 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20415,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 641..680 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20416,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 681..720 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20417,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 721..760 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20418,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 761..800 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20419,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 801..840 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20420,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 841..880 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20421,guiItem:1}
execute if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 881..1000 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20422,guiItem:1}

execute if score @s setProgress matches 1 run scoreboard players set @s setProgress 0


# process status
scoreboard players set @s[predicate=!galaxy:gui/check_slot-13] setProcess 1

execute if score @s setProcess matches 1 run function galaxy:gui/remove-gui_item

execute if score @s setProcess matches 1 if score @s workStatus matches 0 run replaceitem block ~ ~ ~ container.13 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.process.idle\",\"color\":\"gray\",\"italic\":false}"},CustomModelData:100,guiItem:1}
execute if score @s setProcess matches 1 if score @s workStatus matches -1 run replaceitem block ~ ~ ~ container.13 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.process.invalid\",\"color\":\"red\",\"italic\":false}"},CustomModelData:100,guiItem:1}
execute if score @s setProcess matches 1 if score @s workStatus matches 1 run replaceitem block ~ ~ ~ container.13 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.process.working\",\"color\":\"green\",\"italic\":false}"},CustomModelData:100,guiItem:1}

execute if score @s setProcess matches 1 run scoreboard players set @s setProcess 0


# smelt status
scoreboard players set @s[predicate=!galaxy:gui/check_slot-11] setSmelt 1

execute if score @s setSmelt matches 1 run function galaxy:gui/remove-gui_item

execute if score @s setSmelt matches 1 if score @s workStatus matches -1..0 run replaceitem block ~ ~ ~ container.11 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20500,guiItem:1}
execute if score @s setSmelt matches 1 if score @s workStatus matches 1 run replaceitem block ~ ~ ~ container.11 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20501,guiItem:1}

execute if score @s setSmelt matches 1 run scoreboard players set @s setSmelt 0
