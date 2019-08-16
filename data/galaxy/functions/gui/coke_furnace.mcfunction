# working status logic
execute if score @s guiMode matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:coal"}]} run scoreboard players set @s workStatus 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b}]} run scoreboard players set @s workStatus 0
execute if score @s guiMode matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{coke:1},Count:64b}]} run scoreboard players set @s workStatus 0
execute if score @s guiMode matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:coal"}]} run scoreboard players set @s workStatus -1
execute if score @s guiMode matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{coke:1}}]} run scoreboard players set @s workStatus -1

execute if score @s guiMode matches 0 unless score @s workStatus = @s workStatusTemp run scoreboard players set @s setSmelt 1
execute if score @s guiMode matches 0 unless score @s workStatus = @s workStatusTemp run scoreboard players set @s setProcess 1
execute if score @s guiMode matches 0 unless score @s workStatus = @s workStatusTemp run scoreboard players set @s setProgress 1
execute if score @s guiMode matches 0 unless score @s workStatus = @s workStatusTemp run tag @s add function_change_status
execute if score @s guiMode matches 0 run scoreboard players operation @s workStatusTemp = @s workStatus


# mode 0 gui cover
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b,tag:{guiItem:1}}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,tag:{guiItem:1}}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b,tag:{guiItem:1}}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b,tag:{guiItem:1}}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:4b,tag:{guiItem:1}}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:5b,tag:{guiItem:1}}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:6b,tag:{guiItem:1}}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:7b,tag:{guiItem:1}}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:8b,tag:{guiItem:1}}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:9b,tag:{guiItem:1}}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{guiItem:1}}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b,tag:{guiItem:1}}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:14b,tag:{guiItem:1}}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,tag:{guiItem:1}}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:17b,tag:{guiItem:1}}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b,tag:{guiItem:1}}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:19b,tag:{guiItem:1}}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:21b,tag:{guiItem:1}}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:22b,tag:{guiItem:1}}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:23b,tag:{guiItem:1}}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:24b,tag:{guiItem:1}}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:25b,tag:{guiItem:1}}]} run scoreboard players set @s setGuiCover 1
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:26b,tag:{guiItem:1}}]} run scoreboard players set @s setGuiCover 1

execute if score @s guiMode matches 0 if score @s setGuiCover matches 1 run function galaxy:gui/delete-gui_item

execute if score @s guiMode matches 0 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.0 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10200,guiItem:1}
execute if score @s guiMode matches 0 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10200,guiItem:1}
execute if score @s guiMode matches 0 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10200,guiItem:1}
execute if score @s guiMode matches 0 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10200,guiItem:1}
execute if score @s guiMode matches 0 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.4 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10200,guiItem:1}
execute if score @s guiMode matches 0 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.5 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10300,guiItem:1}
execute if score @s guiMode matches 0 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.6 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:100,guiItem:1}
execute if score @s guiMode matches 0 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.7 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:100,guiItem:1}
execute if score @s guiMode matches 0 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.8 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10200,guiItem:1}
execute if score @s guiMode matches 0 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.9 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10200,guiItem:1}
execute if score @s guiMode matches 0 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.10 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10200,guiItem:1}
execute if score @s guiMode matches 0 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.14 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:100,guiItem:1}
execute if score @s guiMode matches 0 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.16 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:100,guiItem:1}
execute if score @s guiMode matches 0 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.17 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10200,guiItem:1}
execute if score @s guiMode matches 0 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.18 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10200,guiItem:1}
execute if score @s guiMode matches 0 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.19 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10200,guiItem:1}
execute if score @s guiMode matches 0 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.21 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10200,guiItem:1}
execute if score @s guiMode matches 0 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.22 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10200,guiItem:1}
execute if score @s guiMode matches 0 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.23 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:100,guiItem:1}
execute if score @s guiMode matches 0 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.24 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:100,guiItem:1}
execute if score @s guiMode matches 0 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.25 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:100,guiItem:1}
execute if score @s guiMode matches 0 if score @s setGuiCover matches 1 run replaceitem block ~ ~ ~ container.26 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:10200,guiItem:1}

execute if score @s setGuiCover matches 1 run scoreboard players set @s setGuiCover 0


# machine working
execute if score @s guiMode matches 0 unless score @s workStatus matches 1 run scoreboard players set @s workProc1 0
execute if score @s guiMode matches 0 if score @s workStatus matches 1 run scoreboard players add @s workProc1 1
execute if score @s guiMode matches 0 if score @s workStatus matches 1 if score @s workProc1 >= #coke_furnace_dur Config if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{coke:1}}]} store result score @s workProc1OCount run data get block ~ ~ ~ Items[{Slot:15b}].Count
execute if score @s guiMode matches 0 if score @s workStatus matches 1 if score @s workProc1 >= #coke_furnace_dur Config if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{coke:1}}]} run scoreboard players add @s workProc1OCount 1
execute if score @s guiMode matches 0 if score @s workStatus matches 1 if score @s workProc1 >= #coke_furnace_dur Config if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{coke:1}}]} store result block ~ ~ ~ Items[{Slot:15b}].Count byte 1 run scoreboard players get @s workProc1OCount
execute if score @s guiMode matches 0 if score @s workStatus matches 1 if score @s workProc1 >= #coke_furnace_dur Config unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b}]} run replaceitem block ~ ~ ~ container.15 minecraft:command_block{display:{Name:"{\"translate\":\"item.galaxy.coke\",\"italic\":false,\"color\":\"white\"}"},CustomModelData:1020,coke:1}
execute if score @s guiMode matches 0 if score @s workStatus matches 1 if score @s workProc1 >= #coke_furnace_dur Config store result score @s workProc1ICount run data get block ~ ~ ~ Items[{Slot:11b}].Count
execute if score @s guiMode matches 0 if score @s workStatus matches 1 if score @s workProc1 >= #coke_furnace_dur Config run scoreboard players remove @s workProc1ICount 1
execute if score @s guiMode matches 0 if score @s workStatus matches 1 if score @s workProc1 >= #coke_furnace_dur Config store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players get @s workProc1ICount
execute if score @s guiMode matches 0 if score @s workStatus matches 1 if score @s workProc1 >= #coke_furnace_dur Config run scoreboard players set @s workProc1 0
execute if score @s guiMode matches 0 if score @s workStatus matches 1 run scoreboard players operation @s workProc1Temp1 = @s workProc1
execute if score @s guiMode matches 0 if score @s workStatus matches 1 run scoreboard players operation @s workProc1Temp2 = #coke_furnace_dur Config
execute if score @s guiMode matches 0 if score @s workStatus matches 1 run scoreboard players operation @s workProc1Temp1 *= #static_1000 numeric
execute if score @s guiMode matches 0 if score @s workStatus matches 1 run scoreboard players operation @s workProc1Temp1 /= @s workProc1Temp2
execute if score @s guiMode matches 0 if score @s workStatus matches 1 run scoreboard players set @s setProgress -1


# smelt status
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:20b}]} run scoreboard players set @s setSmelt 1

execute if score @s guiMode matches 0 if score @s setSmelt matches 1 run function galaxy:gui/delete-gui_item

execute if score @s guiMode matches 0 if score @s setSmelt matches 1 if score @s workStatus matches -1..0 run replaceitem block ~ ~ ~ container.20 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20500,guiItem:1}
execute if score @s guiMode matches 0 if score @s setSmelt matches 1 if score @s workStatus matches 1 run replaceitem block ~ ~ ~ container.20 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20501,guiItem:1}

execute if score @s setSmelt matches 1 run scoreboard players set @s setSmelt 0


# process status
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b}]} run scoreboard players set @s setProcess 1

execute if score @s guiMode matches 0 if score @s setProcess matches 1 run function galaxy:gui/delete-gui_item

execute if score @s guiMode matches 0 if score @s setProcess matches 1 if score @s workStatus matches 0 run replaceitem block ~ ~ ~ container.13 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.process.idle\",\"color\":\"gray\",\"italic\":false}"},CustomModelData:100,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProcess matches 1 if score @s workStatus matches -1 run replaceitem block ~ ~ ~ container.13 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.process.invalid\",\"color\":\"red\",\"italic\":false}"},CustomModelData:100,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProcess matches 1 if score @s workStatus matches 1 run replaceitem block ~ ~ ~ container.13 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.process.working\",\"color\":\"green\",\"italic\":false}"},CustomModelData:100,guiItem:1}

execute if score @s setProcess matches 1 run scoreboard players set @s setProcess 0


# progress bar
execute if score @s guiMode matches 0 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:12b}]} run scoreboard players set @s setProgress 1

execute if score @s guiMode matches 0 if score @s setProgress matches 1 run function galaxy:gui/delete-gui_item

execute if score @s guiMode matches 0 if score @s setProgress matches 1 if score @s workStatus matches 0 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20400,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches 1 if score @s workStatus matches -1 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20423,guiItem:1}

execute if score @s guiMode matches 0 if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 0..40 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20400,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 41..80 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20401,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 81..120 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20402,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 121..160 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20403,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 161..200 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20404,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 201..240 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20405,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 241..280 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20406,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 281..320 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20407,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 321..360 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20408,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 361..400 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20409,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 401..440 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20410,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 441..480 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20411,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 481..520 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20412,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 521..560 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20413,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 561..600 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20414,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 601..640 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20415,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 641..680 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20416,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 681..720 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20417,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 721..760 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20418,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 761..800 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20419,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 801..840 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20420,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 841..880 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20421,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches 1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 881..1000 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20422,guiItem:1}

execute if score @s guiMode matches 0 if score @s setProgress matches -1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 0..40 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20400,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches -1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 41..80 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20401,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches -1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 81..120 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20402,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches -1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 121..160 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20403,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches -1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 161..200 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20404,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches -1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 201..240 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20405,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches -1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 241..280 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20406,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches -1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 281..320 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20407,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches -1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 321..360 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20408,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches -1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 361..400 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20409,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches -1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 401..440 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20410,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches -1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 441..480 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20411,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches -1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 481..520 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20412,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches -1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 521..560 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20413,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches -1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 561..600 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20414,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches -1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 601..640 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20415,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches -1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 641..680 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20416,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches -1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 681..720 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20417,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches -1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 721..760 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20418,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches -1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 761..800 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20419,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches -1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 801..840 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20420,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches -1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 841..880 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20421,guiItem:1}
execute if score @s guiMode matches 0 if score @s setProgress matches -1 if score @s workStatus matches 1 if score @s workProc1Temp1 matches 881..1000 run replaceitem block ~ ~ ~ container.12 minecraft:white_stained_glass_pane{display:{Name:"{\"translate\":\"gui.blank\",\"italic\":false}"},CustomModelData:20422,guiItem:1}

execute if score @s setProgress matches 1 run scoreboard players set @s setProgress 0
execute if score @s setProgress matches -1 run scoreboard players set @s setProgress 0


# split out non-gui Item
# execute if score @s guiMode matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b,tag:{guiItem:1}}]} run scoreboard players set @s guiSplitNG
# execute if score @s guiMode matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,tag:{guiItem:1}}]} run scoreboard players set @s guiSplitNG
# execute if score @s guiMode matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b,tag:{guiItem:1}}]} run scoreboard players set @s guiSplitNG
# execute if score @s guiMode matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b,tag:{guiItem:1}}]} run scoreboard players set @s guiSplitNG
# execute if score @s guiMode matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:4b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:4b,tag:{guiItem:1}}]} run scoreboard players set @s guiSplitNG
# execute if score @s guiMode matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:5b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:5b,tag:{guiItem:1}}]} run scoreboard players set @s guiSplitNG
# execute if score @s guiMode matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:6b,tag:{guiItem:1}}]} run scoreboard players set @s guiSplitNG
# execute if score @s guiMode matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:7b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:7b,tag:{guiItem:1}}]} run scoreboard players set @s guiSplitNG
# execute if score @s guiMode matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:8b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:8b,tag:{guiItem:1}}]} run scoreboard players set @s guiSplitNG
# execute if score @s guiMode matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:9b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:9b,tag:{guiItem:1}}]} run scoreboard players set @s guiSplitNG
# execute if score @s guiMode matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{guiItem:1}}]} run scoreboard players set @s guiSplitNG
# execute if score @s guiMode matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:12b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:12b,tag:{guiItem:1}}]} run scoreboard players set @s guiSplitNG
# execute if score @s guiMode matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b,tag:{guiItem:1}}]} run scoreboard players set @s guiSplitNG
# execute if score @s guiMode matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:14b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:14b,tag:{guiItem:1}}]} run scoreboard players set @s guiSplitNG
# execute if score @s guiMode matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,tag:{guiItem:1}}]} run scoreboard players set @s guiSplitNG
# execute if score @s guiMode matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:17b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:17b,tag:{guiItem:1}}]} run scoreboard players set @s guiSplitNG
# execute if score @s guiMode matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b,tag:{guiItem:1}}]} run scoreboard players set @s guiSplitNG
# execute if score @s guiMode matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:19b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:19b,tag:{guiItem:1}}]} run scoreboard players set @s guiSplitNG
# execute if score @s guiMode matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:20b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:20b,tag:{guiItem:1}}]} run scoreboard players set @s guiSplitNG
# execute if score @s guiMode matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:21b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:21b,tag:{guiItem:1}}]} run scoreboard players set @s guiSplitNG
# execute if score @s guiMode matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:22b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:22b,tag:{guiItem:1}}]} run scoreboard players set @s guiSplitNG
# execute if score @s guiMode matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:23b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:23b,tag:{guiItem:1}}]} run scoreboard players set @s guiSplitNG
# execute if score @s guiMode matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:24b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:24b,tag:{guiItem:1}}]} run scoreboard players set @s guiSplitNG
# execute if score @s guiMode matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:25b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:25b,tag:{guiItem:1}}]} run scoreboard players set @s guiSplitNG
# execute if score @s guiMode matches 0 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:26b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:26b,tag:{guiItem:1}}]} run scoreboard players set @s guiSplitNG

# execute if score @s guiMode matches 0 if score @s guiSplitNG matches 1 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b,tag:{guiItem:1}}]} run summon minecraft:item ~ ~0.25 ~ {PickupDelay:10,Item:{id:"minecraft:stone",Count:1b,tag:{split:1,Slot:0}}}
# execute if score @s guiMode matches 0 if score @s guiSplitNG matches 1 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b,tag:{guiItem:1}}]} run summon minecraft:item ~ ~0.25 ~ {PickupDelay:10,Item:{id:"minecraft:stone",Count:1b,tag:{split:1,Slot:1}}}
# execute if score @s guiMode matches 0 if score @s guiSplitNG matches 1 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b,tag:{guiItem:1}}]} run summon minecraft:item ~ ~0.25 ~ {PickupDelay:10,Item:{id:"minecraft:stone",Count:1b,tag:{split:1,Slot:2}}}
# execute if score @s guiMode matches 0 if score @s guiSplitNG matches 1 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b,tag:{guiItem:1}}]} run summon minecraft:item ~ ~0.25 ~ {PickupDelay:10,Item:{id:"minecraft:stone",Count:1b,tag:{split:1,Slot:3}}}
# execute if score @s guiMode matches 0 if score @s guiSplitNG matches 1 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:4b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:4b,tag:{guiItem:1}}]} run summon minecraft:item ~ ~0.25 ~ {PickupDelay:10,Item:{id:"minecraft:stone",Count:1b,tag:{split:1,Slot:4}}}
# execute if score @s guiMode matches 0 if score @s guiSplitNG matches 1 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:5b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:5b,tag:{guiItem:1}}]} run summon minecraft:item ~ ~0.25 ~ {PickupDelay:10,Item:{id:"minecraft:stone",Count:1b,tag:{split:1,Slot:5}}}
# execute if score @s guiMode matches 0 if score @s guiSplitNG matches 1 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:6b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:6b,tag:{guiItem:1}}]} run summon minecraft:item ~ ~0.25 ~ {PickupDelay:10,Item:{id:"minecraft:stone",Count:1b,tag:{split:1,Slot:6}}}
# execute if score @s guiMode matches 0 if score @s guiSplitNG matches 1 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:7b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:7b,tag:{guiItem:1}}]} run summon minecraft:item ~ ~0.25 ~ {PickupDelay:10,Item:{id:"minecraft:stone",Count:1b,tag:{split:1,Slot:7}}}
# execute if score @s guiMode matches 0 if score @s guiSplitNG matches 1 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:8b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:8b,tag:{guiItem:1}}]} run summon minecraft:item ~ ~0.25 ~ {PickupDelay:10,Item:{id:"minecraft:stone",Count:1b,tag:{split:1,Slot:8}}}
# execute if score @s guiMode matches 0 if score @s guiSplitNG matches 1 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:9b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:9b,tag:{guiItem:1}}]} run summon minecraft:item ~ ~0.25 ~ {PickupDelay:10,Item:{id:"minecraft:stone",Count:1b,tag:{split:1,Slot:9}}}
# execute if score @s guiMode matches 0 if score @s guiSplitNG matches 1 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:10b,tag:{guiItem:1}}]} run summon minecraft:item ~ ~0.25 ~ {PickupDelay:10,Item:{id:"minecraft:stone",Count:1b,tag:{split:1,Slot:10}}}
# execute if score @s guiMode matches 0 if score @s guiSplitNG matches 1 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:12b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:12b,tag:{guiItem:1}}]} run summon minecraft:item ~ ~0.25 ~ {PickupDelay:10,Item:{id:"minecraft:stone",Count:1b,tag:{split:1,Slot:12}}}
# execute if score @s guiMode matches 0 if score @s guiSplitNG matches 1 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b,tag:{guiItem:1}}]} run summon minecraft:item ~ ~0.25 ~ {PickupDelay:10,Item:{id:"minecraft:stone",Count:1b,tag:{split:1,Slot:13}}}
# execute if score @s guiMode matches 0 if score @s guiSplitNG matches 1 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:14b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:14b,tag:{guiItem:1}}]} run summon minecraft:item ~ ~0.25 ~ {PickupDelay:10,Item:{id:"minecraft:stone",Count:1b,tag:{split:1,Slot:14}}}
# execute if score @s guiMode matches 0 if score @s guiSplitNG matches 1 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,tag:{guiItem:1}}]} run summon minecraft:item ~ ~0.25 ~ {PickupDelay:10,Item:{id:"minecraft:stone",Count:1b,tag:{split:1,Slot:16}}}
# execute if score @s guiMode matches 0 if score @s guiSplitNG matches 1 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:17b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:17b,tag:{guiItem:1}}]} run summon minecraft:item ~ ~0.25 ~ {PickupDelay:10,Item:{id:"minecraft:stone",Count:1b,tag:{split:1,Slot:17}}}
# execute if score @s guiMode matches 0 if score @s guiSplitNG matches 1 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b,tag:{guiItem:1}}]} run summon minecraft:item ~ ~0.25 ~ {PickupDelay:10,Item:{id:"minecraft:stone",Count:1b,tag:{split:1,Slot:18}}}
# execute if score @s guiMode matches 0 if score @s guiSplitNG matches 1 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:19b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:19b,tag:{guiItem:1}}]} run summon minecraft:item ~ ~0.25 ~ {PickupDelay:10,Item:{id:"minecraft:stone",Count:1b,tag:{split:1,Slot:19}}}
# execute if score @s guiMode matches 0 if score @s guiSplitNG matches 1 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:20b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:20b,tag:{guiItem:1}}]} run summon minecraft:item ~ ~0.25 ~ {PickupDelay:10,Item:{id:"minecraft:stone",Count:1b,tag:{split:1,Slot:20}}}
# execute if score @s guiMode matches 0 if score @s guiSplitNG matches 1 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:21b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:21b,tag:{guiItem:1}}]} run summon minecraft:item ~ ~0.25 ~ {PickupDelay:10,Item:{id:"minecraft:stone",Count:1b,tag:{split:1,Slot:21}}}
# execute if score @s guiMode matches 0 if score @s guiSplitNG matches 1 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:22b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:22b,tag:{guiItem:1}}]} run summon minecraft:item ~ ~0.25 ~ {PickupDelay:10,Item:{id:"minecraft:stone",Count:1b,tag:{split:1,Slot:22}}}
# execute if score @s guiMode matches 0 if score @s guiSplitNG matches 1 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:23b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:23b,tag:{guiItem:1}}]} run summon minecraft:item ~ ~0.25 ~ {PickupDelay:10,Item:{id:"minecraft:stone",Count:1b,tag:{split:1,Slot:23}}}
# execute if score @s guiMode matches 0 if score @s guiSplitNG matches 1 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:24b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:24b,tag:{guiItem:1}}]} run summon minecraft:item ~ ~0.25 ~ {PickupDelay:10,Item:{id:"minecraft:stone",Count:1b,tag:{split:1,Slot:24}}}
# execute if score @s guiMode matches 0 if score @s guiSplitNG matches 1 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:25b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:25b,tag:{guiItem:1}}]} run summon minecraft:item ~ ~0.25 ~ {PickupDelay:10,Item:{id:"minecraft:stone",Count:1b,tag:{split:1,Slot:25}}}
# execute if score @s guiMode matches 0 if score @s guiSplitNG matches 1 if block ~ ~ ~ minecraft:barrel{Items:[{Slot:26b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:26b,tag:{guiItem:1}}]} run summon minecraft:item ~ ~0.25 ~ {PickupDelay:10,Item:{id:"minecraft:stone",Count:1b,tag:{split:1,Slot:26}}}


